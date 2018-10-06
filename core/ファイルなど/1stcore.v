`default_nettype none

module f_core
  #(parameter ILENGTH = 32,
    parameter INUM = 1024,
    parameter IADDLEN = 8,
    CLK_PER_HALF_BIT=400)
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
   input wire [1:0] corereadwhere,
   input wire corereadok,
   output wire coreread,
   input wire [31:0] indoutb,
   input wire [1:0] corewritewhere,
   input wire corewriteok,
   output wire corewrite,
   output wire [31:0] outdina,
   output wire [3:0] outwe);
  
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
  reg corereadreg;
  reg corewritereg;
  reg [31:0] outdina_reg;
  reg [3:0] outwereg;
  assign coreread=corereadreg;
  assign corewrite=corewritereg;
  assign outdina = outdina_reg;
  assign outwe=outwereg;



  always @(posedge clk) begin

    stenablereg_a<=0;
    stenablereg_b<=0;
    corereadreg<=0;
    corewritereg<=0;

    if (rst==1) begin
      pc <= 0;
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
      corereadreg<=0;
      corewritereg<=0;
      outdina_reg<=0;
      outwereg<=0;

    end else begin
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
          pcrs1<={instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[19:12],instout[20],instout[30:21],1'b0};
          pcrs2<={24'b0,pc};//pcの長さで変える必要あり
          rs1<={24'b0,pc};//pcの長さで変える必要あり
          rs2<=32'b100;
          opc<=1;
          opp<=1;
        end
        if (instout[6:2]==5'b11001) begin //JALR rdに次pc格納 pc=rs1+imm
          pcrs1<=mainreg[instout[19:15]];
          pcrs2<={instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[30:20]};
          rs1<={24'b0,pc};//pcの長さで変える必要あり
          rs2<=32'b100;
          opc<=1;
          opp<=1;
        end
        if (instout[6:2]==5'b11000) begin //BRANCH
          rs1<=mainreg[instout[19:15]];
          rs2<=mainreg[instout[24:20]];
          pcrs1<={instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[7],instout[30:25],instout[11:8],1'b0};
          pcrs2<={24'b0,pc};//pcの長さで変える必要あり
          opinst<=instout[14:12];
          brnc<=1; //opcを後で評価
        end
        if (instout[6:2]==5'b00100) begin //OP-IMM
          rs1<=mainreg[instout[19:15]];
          rs2<={instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[30:20]};
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
          rs1<=mainreg[instout[19:15]]+{instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[30:20]};
          is_arith<=instout[14];
          opinst<={instout[13:12],~(instout[13]&instout[12])};
          ld<=1;
        end
        if(instout[6:2]==5'b01000) begin//STORE
          rs1<=mainreg[instout[19:15]]+{instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[31],instout[30:25],instout[11:7]};
          rs2<=mainreg[instout[24:20]];
          opinst<={instout[13:12],~(instout[13]&instout[12])};
          st<=1;
        end
        if(instout[6:2]==5'b00010) begin//IO このへんのinstoutは変えていきたい
          rs1<=mainreg[instout[19:15]];
          inp<=~instout[12];
          outp<=instout[12];
          if (instout[12]) begin
            outp<=1;
            if (corewriteok) begin
            end else begin
              state<=1;
            end
          end else begin
            is_arith<=instout[14];
            inp<=1;
            if (corereadok) begin
              corereadreg<=1;
            end else begin
              state<=1;
            end
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
          state<=3;
        end
        if (outp) begin
          corewritereg<=1;
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
          end
        end
          

      end
      if (state==3) begin //memory access
        state<=4;
      end
      if (state==4) begin //writeback
        state<=0;
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
                mainreg[rdnum]<={r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7],r_data_a[7:0]};
              end
              if (rs1[1:0]==2'b01) begin
                mainreg[rdnum]<={r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15:8]};
              end
              if (rs1[1:0]==2'b10) begin
                mainreg[rdnum]<={r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23:16]};
              end
              if (rs1[1:0]==2'b11) begin
                mainreg[rdnum]<={r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31:24]};
              end
            end
            if (opinst[1]) begin
              if (rs1[1:0]==2'b0) begin
                mainreg[rdnum]<={r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15],r_data_a[15:0]};
              end
              if (rs1[1:0]==2'b01) begin
                mainreg[rdnum]<={r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23],r_data_a[23:8]};
              end
              if (rs1[1:0]==2'b10) begin
                mainreg[rdnum]<={r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31],r_data_a[31:16]};
              end
              if (rs1[1:0]==2'b11) begin
                mainreg[rdnum]<={r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7],r_data_b[7:0],r_data_a[31:24]};
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
            if (corewritewhere[1:0]==2'b0) begin
              mainreg[rdnum]<={24'b0,indoutb[7:0]};
            end
            if (corewritewhere[1:0]==2'b01) begin
              mainreg[rdnum]<={24'b0,indoutb[15:8]};
            end
            if (corewritewhere[1:0]==2'b10) begin
              mainreg[rdnum]<={24'b0,indoutb[23:16]};
            end
            if (corewritewhere[1:0]==2'b11) begin
              mainreg[rdnum]<={24'b0,indoutb[31:24]};
            end
          end else begin
            if (corewritewhere[1:0]==2'b0) begin
              mainreg[rdnum]<={indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7],indoutb[7:0]};
            end
            if (corewritewhere[1:0]==2'b01) begin
              mainreg[rdnum]<={indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15],indoutb[15:8]};
            end
            if (corewritewhere[1:0]==2'b10) begin
              mainreg[rdnum]<={indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23],indoutb[23:16]};
            end
            if (corewritewhere[1:0]==2'b11) begin
              mainreg[rdnum]<={indoutb[31],indoutb[31],indoutb[31],indoutb[31],indoutb[31],indoutb[31],indoutb[31],indoutb[31],indoutb[31],indoutb[31],indoutb[31],indoutb[31],indoutb[31],indoutb[31],indoutb[31],indoutb[31:24]};
            end
          end
        end
            
        mainreg[0]<=0;
      end

    end
  end

endmodule

`default_nettype wire
