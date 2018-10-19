`default_nettype none

module f_core
  #(parameter ILENGTH = 32,
    parameter INUM = 1024,
    parameter IADDLEN = 8)
  (input wire clk,
   input wire rst,
   output wire [31:0] memaddr_a,
   output wire [31:0] w_data_a,
   output wire [3:0] wenable_a,
   output wire [3:0] wenable_b,
   input wire [31:0] r_data_a,
   output wire en_ab,
   output wire [31:0] memaddr_b,
   output wire [31:0] w_data_b,
   input wire [31:0] r_data_b,
   output wire [31:0] iaddr,
   input wire [31:0] instout,
   output wire en_inst,
   /*input wire [1:0] corereadwhere,//
   input wire corereadok,
   output wire coreread,
   input wire [31:0] indoutb,
   input wire [1:0] corewritewhere,
   input wire corewriteok,
   output wire corewrite,
   output wire [31:0] outdina,
   output wire [3:0] outwe,*///

   output wire [3:0] io_awaddr_wire,
   input wire io_awready,
   output wire io_awvalid_wire,

   output wire io_wvalid_wire,
   input wire io_wready,
   output reg [31:0] io_wdata,
   output reg [3:0] io_wstrb,

   input wire io_bvalid,
   output wire io_bready_wire,
   input wire [1:0] io_bresp,

   output wire io_arvalid_wire,
   input wire io_arready,
   output reg [3:0] io_araddr,
   
   input wire io_rvalid,
   output reg io_rready,
   input wire [31:0] io_rdata,
   input wire [1:0] io_rresp,
   
   output wire countr1,
   output wire countr2,
   output wire countr3,
   

  output wire rstmem);



  assign rstmem=~rst;
  

  reg [3:0] io_awaddr;
  reg io_awvalid;
  reg io_wvalid;
  reg io_bready;
  reg io_arvalid;
  assign io_awvalid_wire = io_awvalid;
  assign io_awaddr_wire = io_awaddr;
  assign io_wvalid_wire = io_wvalid;
  assign io_bready_wire = io_bready;
  assign io_arvalid_wire = io_arvalid;

  reg [2:0] io_state;


  reg [12:0] pc;
  reg [2:0] state;
  reg [31:0] mainreg[31:0];
  reg [4:0] opcode;//inst[6:2]
  reg [4:0] rdnum;
  reg [31:0] rs1;
  reg [31:0] rs2; //rdに格納するものの計算に用いる値
  reg [31:0] pcrs1;
  reg [31:0] pcrs2; //pcに～
  reg [31:0] rslt;

  reg [29:0] countregtest;
  reg led1;
  reg led2;
  reg led3;
  assign countr1=led1;
  assign countr2=led2;
  assign countr3=led3;

  //decode用
  reg opc; //これが1ならpc++以外の動作
  reg brnc; //これが1なら比較命令 opcを後で  rdに書き込まない
  reg opp; //これが1なら演算する
  reg ld; //これが1ならLOAD/STORE
  reg st;
  reg [2:0] opinst;//命令種別判定
  reg is_arith; //これが1ならarith right shiftで計算 (シフト演算) SUB(ADD)

  reg [31:0] succpc;
  reg [31:0] movepc;

  reg [3:0] stenablereg_a;
  reg [3:0] stenablereg_b;
  reg [31:0] w_data_a_reg;
  reg [31:0] w_data_b_reg;

  wire [12:0] memaddr_b_wire;

  assign memaddr_a = {19'b0,rs1[14:2]};
  assign memaddr_b_wire = rs1[14:2]+13'b1;
  assign memaddr_b = {19'b0,memaddr_b_wire};
  assign w_data_a = w_data_a_reg;
  assign w_data_b = w_data_b_reg;
  assign wenable_a = stenablereg_a;
  assign wenable_b = stenablereg_b;
  assign en_ab = 1'b1;

  assign en_inst=1'b1;

  integer i;
  assign iaddr = {19'b0,pc};

  reg inp;
  reg outp;
  /*reg corereadreg;
  reg corewritereg;
  reg [31:0] outdina_reg;
  reg [3:0] outwereg;
  assign coreread=corereadreg;
  assign corewrite=corewritereg;
  assign outdina = outdina_reg;
  assign outwe=outwereg;
*/


  always @(posedge clk) begin

    stenablereg_a<=0;
    stenablereg_b<=0;
    //corereadreg<=0;

    if (~rst) begin
      pc <= 0;
      //corewritereg<=0;
      state <= 0;
      
      for (i=0;i<32;i=i+1)
        mainreg[i]<=0;
      opcode<=0;
      rdnum<=0;
      rs1<=0;
      rs2<=0;
      pcrs1<=0;
      pcrs2<=0;
      rslt<=0;
      opc<=0;
      brnc<=0;
      opinst<=0;
      is_arith<=0;
      succpc<=0;
      movepc<=0;
      opp<=0;
      ld<=0;
      st<=0;
      stenablereg_a<=0;
      stenablereg_b<=0;
      w_data_a_reg<=0;
      w_data_b_reg<=0;
      inp<=0;
      outp<=0;
      /*corereadreg<=0;
      corewritereg<=0;
      outdina_reg<=0;
      outwereg<=0;*/

      io_awaddr<=0;
      io_awvalid<=0;
      io_wvalid<=0;
      io_wdata<=0;
      io_wstrb<=0;
      io_bready<=0;
      io_arvalid<=0;
      io_araddr<=0;
      io_rready<=0;

      countregtest<=0;

    end else begin
      countregtest<=countregtest+1;
      led1<=countregtest[29];
      led2<=countregtest[26];
      led3<=countregtest[23];
      if (state==0) begin //fetch
        state<=1;


      end
      if (state==1) begin //decode
        opcode<=instout[6:2];
        rdnum<=instout[11:7];
        state<=2;

        opc<=0;
        brnc<=0;
        opp<=0;
        is_arith<=0;
        opinst<=3'b0;
        ld<=0;
        st<=0;
        inp<=0;
        outp<=0;

        //多分このへんのif文は変えたほうがええ
        if (instout[6:2]==5'b01101) begin //LUI(即値をレジスタに 下位12は0)
          rs1<={instout[31:12],12'b0};
          rs2<=32'b0;
          opp<=1;
        end
        if (instout[6:2]==5'b00101) begin //AUIPC  即値+pc
          rs1<={instout[31:12],12'b0};
          rs2<={24'b0,pc};//pcの長さで変える必要あり
          opp<=1;
        end
        if (instout[6:2]==5'b11011) begin //JAL rdに次pc格納 pc+=imm
          pcrs1<={{12{instout[31]}},instout[19:12],instout[20],instout[30:21],1'b0};
          pcrs2<={24'b0,pc};//pcの長さで変える必要あり
          rs1<={24'b0,pc};//pcの長さで変える必要あり
          rs2<=32'b100;
          opc<=1;
          opp<=1;
        end
        if (instout[6:2]==5'b11001) begin //JALR rdに次pc格納 pc=rs1+imm
          pcrs1<=mainreg[instout[19:15]];
          pcrs2<={{21{instout[31]}},instout[30:20]};
          rs1<={24'b0,pc};//pcの長さで変える必要あり
          rs2<=32'b100;
          opc<=1;
          opp<=1;
        end
        if (instout[6:2]==5'b11000) begin //BRANCH
          rs1<=mainreg[instout[19:15]];
          rs2<=mainreg[instout[24:20]];
          pcrs1<={{20{instout[31]}},instout[7],instout[30:25],instout[11:8],1'b0};
          pcrs2<={24'b0,pc};//pcの長さで変える必要あり
          opinst<=instout[14:12];
          brnc<=1; //opcを後で評価
        end
        if (instout[6:2]==5'b00100) begin //OP-IMM
          rs1<=mainreg[instout[19:15]];
          rs2<={{21{instout[31]}},instout[31],instout[30:20]};
          opinst<=instout[14:12];
          if (instout[14:12]==101) begin
            is_arith<=instout[30];
          end
          opp<=1;
        end
        if(instout[6:2]==5'b01100) begin //OP
          rs1<=mainreg[instout[19:15]];
          rs2<=mainreg[instout[24:20]];
          opinst<=instout[14:12];
          is_arith<=instout[30];
          opp<=1;
        end
        if(instout[6:2]==5'b00000) begin//LOAD
          rs1<=mainreg[instout[19:15]]+{{21{instout[31]}},instout[30:20]};
          is_arith<=instout[14];
          opinst<={instout[13:12],~(instout[13]&instout[12])};
          ld<=1;
        end
        if(instout[6:2]==5'b01000) begin//STORE
          rs1<=mainreg[instout[19:15]]+{{21{instout[31]}},instout[30:25],instout[11:7]};
          rs2<=mainreg[instout[24:20]];
          opinst<={instout[13:12],~(instout[13]&instout[12])};
          st<=1;
        end
        if(instout[6:2]==5'b00010) begin//IO このへんのinstoutは変えていきたい
          rs1<=mainreg[instout[19:15]];
          inp<=~instout[12];
          outp<=instout[12];
          io_araddr<=4'h8;
          io_arvalid<=1;
          io_state<=0;
          if (instout[12]) begin
            outp<=1;
            //if (corewriteok) begin
            //end else begin
            //end
          end else begin
            is_arith<=instout[14];
            inp<=1;
            //if (corereadok) begin
              //corereadreg<=1;
            //end else begin
            //end
          end
        end


      end
      if (state==2) begin //exection
        state<=4;
        succpc<=pc+4;
        movepc<=pcrs1+pcrs2;
        if (opp) begin
          if (opinst==3'b000) begin //ADD
            if (is_arith==0) begin
              rslt<=rs1+rs2;
            end else begin
              rslt<=rs1-rs2;
            end
          end
          if (opinst==3'b001) begin //<<
            rslt<=rs1<<(rs2[4:0]);
          end
          if (opinst==3'b010) begin //<
            rslt<=($signed(rs1)<$signed(rs2))?1:0;
          end
          if (opinst==3'b011) begin //< unsigned
            rslt<=(rs1<rs2)?1:0;
          end
          if (opinst==3'b100) begin //xor
            rslt<=rs1^rs2;
          end
          if (opinst==3'b101) begin //>>
            if (is_arith==0) begin
              rslt<=rs1>>(rs2[4:0]);
            end else begin
              rslt<=rs1>>>(rs2[4:0]);
            end
          end
          if (opinst==3'b110) begin //or
            rslt<=rs1|rs2;
          end
          if (opinst==3'b111) begin //and
            rslt<=rs1&rs2;
          end
        end
        if (brnc) begin
          if (opinst==3'b000) begin
            opc<=(rs1==rs2)?1:0;
          end
          if (opinst==3'b001) begin
            opc<=(rs1!=rs2)?1:0;
          end
          if (opinst==3'b100) begin
            opc<=(($signed(rs1))<($signed(rs2)))?1:0;
          end
          if (opinst==3'b101) begin
            opc<=(($signed(rs1))>=($signed(rs2)))?1:0;
          end
          if (opinst==3'b110) begin
            opc<=(rs1<rs2)?1:0;
          end
          if (opinst==3'b111) begin
            opc<=(rs1>=rs2)?1:0;
          end
        end
        if (ld) begin
          state<=3;
        end
        if (st) begin
          if (opinst[0]) begin
            if (rs1[1:0]==2'b0) begin
              w_data_a_reg<={w_data_a_reg,rs2[7:0]};
              stenablereg_a<=4'b0001;
            end
            if (rs1[1:0]==2'b01) begin
              w_data_a_reg<={w_data_a_reg[31:16],rs2[7:0],w_data_a_reg[7:0]};
              stenablereg_a<=4'b0010;
            end
            if (rs1[1:0]==2'b10) begin
              w_data_a_reg<={w_data_a_reg[31:24],rs2[7:0],w_data_a_reg[15:0]};
              stenablereg_a<=4'b0100;
            end
            if (rs1[1:0]==2'b11) begin
              w_data_a_reg<={rs2[7:0],w_data_a_reg[23:0]};
              stenablereg_a<=4'b1000;
            end
          end
          if (opinst[1]) begin
            if (rs1[1:0]==2'b0) begin
              w_data_a_reg<={w_data_a_reg[31:16],rs2[15:0]};
              stenablereg_a<=4'b0011;
            end
            if (rs1[1:0]==2'b01) begin//
              w_data_a_reg<={w_data_a_reg[31:24],rs2[15:0],w_data_a_reg[7:0]};
              stenablereg_a<=4'b0110;
            end
            if (rs1[1:0]==2'b10) begin
              w_data_a_reg<={rs2[15:0],w_data_a_reg[15:0]};
              stenablereg_a<=4'b1100;
            end
            if (rs1[1:0]==2'b11) begin//
              w_data_a_reg<={rs2[7:0],w_data_a_reg[23:0]};
              w_data_b_reg<={w_data_b_reg[31:8],rs2[15:8]};
              stenablereg_a<=4'b1000;
              stenablereg_b<=4'b0001;
            end
          end
          if (opinst[2]) begin
            if (rs1[1:0]==2'b0) begin
              w_data_a_reg<=rs2;
              stenablereg_a<=4'b1111;
            end
            if (rs1[1:0]==2'b01) begin//
              w_data_a_reg<={rs2[23:0],w_data_a_reg[7:0]};
              w_data_b_reg<={w_data_b_reg[31:8],rs2[31:24]};
              stenablereg_a<=4'b1110;
              stenablereg_b<=4'b0001;
            end
            if (rs1[1:0]==2'b10) begin//
              w_data_a_reg<={rs2[15:0],w_data_a_reg[15:0]};
              w_data_b_reg<={w_data_b_reg[31:16],rs2[31:16]};
              stenablereg_a<=4'b1100;
              stenablereg_b<=4'b0011;
            end
            if (rs1[1:0]==2'b11) begin//
              w_data_a_reg<={rs2[7:0],w_data_a_reg[23:0]};
              w_data_b_reg<={w_data_b_reg[31:24],rs2[31:8]};
              stenablereg_a<=4'b1000;
              stenablereg_b<=4'b0111;
            end
          end
        end
        if (inp) begin
          state<=2;
          if (io_state==3'b0) begin
            io_rready<=0;
            if (io_arready) begin
              io_arvalid<=0;
              io_state<=3'b1;
            end
          end
          if (io_state==3'b1) begin
            if (io_rvalid) begin
              io_rready<=1;
              io_araddr<=4'h0;//ここでデータを受け取ってrxfifoがあるか調べる ないならio_state 0に戻る
              io_arvalid<=1;
              io_state<=3'b10;
              if (~io_rdata[0]) begin //empty
                io_state<=3'b0;
                io_araddr<=4'h8;
              end
            end
          end
          if (io_state==3'b10) begin
            io_rready<=0;
            if (io_arready) begin
              io_arvalid<=0;
              io_state<=3'b11;
            end
          end
          if (io_state==3'b11) begin
            if (io_rvalid) begin
              io_rready<=1;//state4でこれをおろす
              rslt<={24'b0,io_rdata[7:0]};
              state<=4;
            end
          end
          //state<=3;
        end
        if (outp) begin
          state<=2;
          if (io_state==3'b0) begin
            io_rready<=0;
            if (io_arready) begin
              io_arvalid<=0;
              io_state<=3'b1;
            end
          end
          if (io_state==3'b1) begin
            if (io_rvalid) begin
              io_rready<=1;//ここでデータを受け取ってtxfifoに空きがあるか調べる ないならio_state 0に戻る
              if (io_rdata[3]) begin //full
                io_state<=3'b0;
                io_araddr<=4'h8;
                io_arvalid<=1;
              end else begin
                io_state<=3'b10;
                io_awaddr<=4'h4;
                io_awvalid<=1;
                io_wdata<=rs1;
                io_wvalid<=1;
              end
            end
          end
          if (io_state==3'b10) begin //aw,w両方まつ
            io_rready<=0;
            if (io_awready) begin
              io_awvalid<=0;
              io_state<=3'b11;
            end
            if (io_wready) begin
              io_wvalid<=0;
              io_state<=3'b100;
            end
            if (io_wready&&io_awready) begin
              io_state<=3'b101;
            end
          end
          if (io_state==3'b11) begin //wをまつ
            if (io_wready) begin
              io_wvalid<=0;
              io_state<=3'b101;
            end
          end
          if (io_state==3'b100) begin //awをまつ
            if (io_awready) begin
              io_awvalid<=0;
              io_state<=3'b101;
            end
          end
          if (io_state==3'b101) begin
            if (io_bvalid) begin
              io_bready<=1; //これをおろす
              state<=4;
            end
          end
              
          /*corewritereg<=1;
          if (corewritewhere[1]) begin
            if (corewritewhere[0]) begin
              outdina_reg<={rs1[7:0],outdina_reg[23:0]};
              outwereg<=4'b1000;
            end else begin
              outdina_reg<={outdina_reg[31:24],rs1[7:0],outdina_reg[15:0]};
              outwereg<=4'b0100;
            end
          end else begin
            if (corewritewhere[0]) begin
              outdina_reg<={outdina_reg[31:16],rs1[7:0],outdina_reg[7:0]};
              outwereg<=4'b0010;
            end else begin
              outdina_reg<={outdina_reg[31:8],rs1[7:0]};
              outwereg<=4'b0001;
            end
          end*/
        end
          

      end
      if (state==3) begin //memory access
        state<=4;
      end
      if (state==4) begin //writeback
        state<=0;
        io_rready<=0;
        io_bready<=0;
        pc<=succpc;
        if (opc) begin
          pc<=movepc;
        end
        if (opp) begin
          mainreg[rdnum]<=rslt;
        end
        if (ld) begin
          if (is_arith) begin
            if (opinst[0]) begin
              if (rs1[1:0]==2'b0) begin
                mainreg[rdnum]<={24'b0,r_data_a[7:0]};
              end
              if (rs1[1:0]==2'b01) begin
                mainreg[rdnum]<={24'b0,r_data_a[15:8]};
              end
              if (rs1[1:0]==2'b10) begin
                mainreg[rdnum]<={24'b0,r_data_a[23:16]};
              end
              if (rs1[1:0]==2'b11) begin
                mainreg[rdnum]<={24'b0,r_data_a[31:24]};
              end
   
            end
            if (opinst[1]) begin
              if (rs1[1:0]==2'b0) begin
                mainreg[rdnum]<={16'b0,r_data_a[15:0]};
              end
              if (rs1[1:0]==2'b01) begin
                mainreg[rdnum]<={16'b0,r_data_a[23:8]};
              end
              if (rs1[1:0]==2'b10) begin
                mainreg[rdnum]<={16'b0,r_data_a[31:16]};
              end
              if (rs1[1:0]==2'b11) begin
                mainreg[rdnum]<={16'b0,r_data_b[7:0],r_data_a[31:24]};
              end
            end
          end else begin
            if (opinst[0]) begin
              if (rs1[1:0]==2'b0) begin
                mainreg[rdnum]<={{24{r_data_a[7]}},r_data_a[7:0]};
              end
              if (rs1[1:0]==2'b01) begin
                mainreg[rdnum]<={{24{r_data_a[15]}},r_data_a[15:8]};
              end
              if (rs1[1:0]==2'b10) begin
                mainreg[rdnum]<={{24{r_data_a[23]}},r_data_a[23:16]};
              end
              if (rs1[1:0]==2'b11) begin
                mainreg[rdnum]<={{24{r_data_a[31]}},r_data_a[31:24]};
              end
            end
            if (opinst[1]) begin
              if (rs1[1:0]==2'b0) begin
                mainreg[rdnum]<={{16{r_data_a[15]}},r_data_a[15:0]};
              end
              if (rs1[1:0]==2'b01) begin
                mainreg[rdnum]<={{16{r_data_a[23]}},r_data_a[23:8]};
              end
              if (rs1[1:0]==2'b10) begin
                mainreg[rdnum]<={{16{r_data_a[31]}},r_data_a[31:16]};
              end
              if (rs1[1:0]==2'b11) begin
                mainreg[rdnum]<={{16{r_data_b[7]}},r_data_b[7:0],r_data_a[31:24]};
              end
            end
            if (opinst[2]) begin
              if (rs1[1:0]==2'b0) begin
                mainreg[rdnum]<=r_data_a[31:0];
              end
              if (rs1[1:0]==2'b01) begin
                mainreg[rdnum]<={r_data_b[7:0],r_data_a[31:8]};
              end
              if (rs1[1:0]==2'b10) begin
                mainreg[rdnum]<={r_data_b[15:0],r_data_a[31:16]};
              end
              if (rs1[1:0]==2'b11) begin
                mainreg[rdnum]<={r_data_b[23:0],r_data_a[31:24]};
              end
            end
          end
        end
        if (inp) begin
          if (is_arith) begin
            mainreg[rdnum]<=rslt;
          end else begin
            mainreg[rdnum]<={{24{rslt[7]}},rslt[7:0]};
          end
        end
            
        mainreg[0]<=0;
      end

    end
  end

endmodule

`default_nettype wire
