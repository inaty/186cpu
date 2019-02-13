`default_nettype none

module nino_core
  (input wire clk,
   input wire rst,
   output wire [31:0] memaddr_a,
   output wire [31:0] w_data_a,
   output wire [3:0] wenable_a,
   input wire [31:0] r_data_a,
   output wire en_ab,
   output wire [31:0] memaddr_b,
   output wire [31:0] w_data_b,
   output wire [3:0] wenable_b,
   input wire [31:0] instoutwire,

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
   
   /*output wire countr1,
   output wire countr2,
   output wire countr3,
   output wire countr4,
   output wire countr5,
   output wire countr6,
   output wire countr7,
   output wire countr8,*/

   //debug!!!!
   //output wire [1023:0] mainregwire,
   //output wire [1023:0] mainfregwire,
   //output wire [31:0] ic,
   

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

  reg [2:0] io_state; //sucでないstateを書きたい



  reg [22:0] enextpc;
  reg [22:0] e2nextpc;
  //reg [22:0] mnextpc;
  //reg [22:0] wnextpc; //命令読み出し用 ここに次PC　or　ジャンプ先を入れておく
   //    もし分岐を間違えたらフラッシュ
   //    E段階で書く
   //    今実行中の命令でない
  //reg [2:0] state;

  //reg [22:0] enotnextpc;
  //reg [22:0] wnotnextpc; //分岐予測用(予測しなかった側のpc)

  reg [22:0] fpcbf;
  reg [22:0] fpc;
  reg [22:0] f2pc;
  reg [22:0] dpc;
  reg [22:0] epc;
  reg [22:0] e2pc;
  reg [22:0] e3pc;
  reg [22:0] e4pc;
  reg [22:0] mpc;
  reg [22:0] wpc; //今実行中のpc
  reg [31:0] mainreg[31:0];
  reg [31:0] mainfreg[31:0];
  //reg [4:0] opcode;//オペコード格納
  reg [6:0] erdnum;
  reg [6:0] e2rdnum;
  reg [6:0] e3rdnum;
  reg [6:0] e4rdnum;
  reg [6:0] mrdnum;
  reg [6:0] wrdnum;//書き込みレジスタ 4 1->float 5 0->書き込まない
  reg [31:0] rs1;
  reg [31:0] rs2;//pcrs消したぞ
  reg [31:0] e2rslt;
  reg [31:0] e3rslt;
  reg [31:0] e4rslt;
  reg [31:0] mrslt;
  reg [31:0] wrslt;
  reg [31:0] w2rslt;//(フォワーディング用 該当段階で書き込む)
   //レジスタ配列をレジスタの値から参照するのを防ぐ
   //inst->rs1 rs2->mrslt->wrslt
  reg [31:0] imm;



  //reg [29:0] countregtest;
  //reg led1;
  //reg led2;
  //reg led3;
  //assign countr1=led1;
  //assign countr2=led2;
  //assign countr3=led3;

//LUI AUIPCはOPに流す
//JAL JALRは半分OPを使う
  //reg ejump;
  //reg jump; //これは確定　e段階に書き込み
     //これが1ならpc++以外の動作　元の名前opc
     //ジャンプ先が予測と一致してる場合は立てない
  reg ebrnc;
  reg e2brnc;
  //reg mbrnc;
  //reg wbrnc; //これが1なら比較命令 opcを後で  rdに書き込まない
  reg opp;//これが1なら演算する
  reg eld;
  reg e2ld;
  reg e3ld;
  reg mld; //これが1ならLOAD
  reg st;
  reg [2:0] opinst;//命令種別判定
  reg is_arith;//これが1ならarith right shiftで計算 (シフト演算) SUB(ADD)
  //reg is_notfill;
  reg finst;
  reg [4:0] fopinst;
  reg efadd;
  reg efsub;
  reg efmul;
  reg efsqrt;
  reg efdiv;
  reg e2fadd;
  reg e2fsub;
  reg e3fadd;
  reg e3fsub;
  reg e4fadd;
  reg e4fsub;
  reg e2fmul;
  reg e2fsqrt;
  reg e3fsqrt;
  reg e4fsqrt;
  reg e5fsqrt;
  reg e2fdiv;
  reg e3fdiv;
  reg e4fdiv;
  reg e5fdiv;
  reg eftoi;
  reg e2ftoi;

  reg [8:0] stage;//各段階が有効かどうか
    //有効でないならフォワーディング等をする必要がない 4 fetch -> 0 write

  //reg [6:0] rs1add;
  //reg [6:0] rs2add; //E段階で用いる  5 0->レジスタ以外の値(pcとか)   4 1->float



  //debug!!!!!!!!!!!!!
  /*assign mainfregwire[31:0]=mainfreg[0];
  assign mainfregwire[63:32]=mainfreg[1];
  assign mainfregwire[95:64]=mainfreg[2];
  assign mainfregwire[127:96]=mainfreg[3];
  assign mainfregwire[159:128]=mainfreg[4];
  assign mainfregwire[191:160]=mainfreg[5];
  assign mainfregwire[223:192]=mainfreg[6];
  assign mainfregwire[255:224]=mainfreg[7];
  assign mainfregwire[287:256]=mainfreg[8];
  assign mainfregwire[319:288]=mainfreg[9];
  assign mainfregwire[351:320]=mainfreg[10];
  assign mainfregwire[383:352]=mainfreg[11];
  assign mainfregwire[415:384]=mainfreg[12];
  assign mainfregwire[447:416]=mainfreg[13];
  assign mainfregwire[479:448]=mainfreg[14];
  assign mainfregwire[511:480]=mainfreg[15];
  assign mainfregwire[543:512]=mainfreg[16];
  assign mainfregwire[575:544]=mainfreg[17];
  assign mainfregwire[607:576]=mainfreg[18];
  assign mainfregwire[639:608]=mainfreg[19];
  assign mainfregwire[671:640]=mainfreg[20];
  assign mainfregwire[703:672]=mainfreg[21];
  assign mainfregwire[735:704]=mainfreg[22];
  assign mainfregwire[767:736]=mainfreg[23];
  assign mainfregwire[799:768]=mainfreg[24];
  assign mainfregwire[831:800]=mainfreg[25];
  assign mainfregwire[863:832]=mainfreg[26];
  assign mainfregwire[895:864]=mainfreg[27];
  assign mainfregwire[927:896]=mainfreg[28];
  assign mainfregwire[959:928]=mainfreg[29];
  assign mainfregwire[991:960]=mainfreg[30];
  assign mainfregwire[1023:992]=mainfreg[31];
  assign mainregwire[31:0]=mainreg[0];
  assign mainregwire[63:32]=mainreg[1];
  assign mainregwire[95:64]=mainreg[2];
  assign mainregwire[127:96]=mainreg[3];
  assign mainregwire[159:128]=mainreg[4];
  assign mainregwire[191:160]=mainreg[5];
  assign mainregwire[223:192]=mainreg[6];
  assign mainregwire[255:224]=mainreg[7];
  assign mainregwire[287:256]=mainreg[8];
  assign mainregwire[319:288]=mainreg[9];
  assign mainregwire[351:320]=mainreg[10];
  assign mainregwire[383:352]=mainreg[11];
  assign mainregwire[415:384]=mainreg[12];
  assign mainregwire[447:416]=mainreg[13];
  assign mainregwire[479:448]=mainreg[14];
  assign mainregwire[511:480]=mainreg[15];
  assign mainregwire[543:512]=mainreg[16];
  assign mainregwire[575:544]=mainreg[17];
  assign mainregwire[607:576]=mainreg[18];
  assign mainregwire[639:608]=mainreg[19];
  assign mainregwire[671:640]=mainreg[20];
  assign mainregwire[703:672]=mainreg[21];
  assign mainregwire[735:704]=mainreg[22];
  assign mainregwire[767:736]=mainreg[23];
  assign mainregwire[799:768]=mainreg[24];
  assign mainregwire[831:800]=mainreg[25];
  assign mainregwire[863:832]=mainreg[26];
  assign mainregwire[895:864]=mainreg[27];
  assign mainregwire[927:896]=mainreg[28];
  assign mainregwire[959:928]=mainreg[29];
  assign mainregwire[991:960]=mainreg[30];
  assign mainregwire[1023:992]=mainreg[31];
  reg [31:0] instcount;
  assign ic=instcount;*/

  //reg [10:0] incounter;
  //reg firstout;
  reg eoutp;
  reg einp;
  reg e2inp;
  reg e2outp; 

  reg ejal;
  reg ejalr;
  reg e2jalr;


  /*assign countr1=incounter[0];
  assign countr2=incounter[1];
  assign countr3=incounter[2];
  assign countr4=incounter[3];
  assign countr5=incounter[4];
  assign countr6=incounter[5];
  assign countr7=incounter[6];
  assign countr8=firstout;*/
  


    // これがerdnum wrdnumとかぶってたら wrslt frsltから引っ張ってくる
    //ここのstageの値は移ったあと
  reg [5:0] fwdrs1;//100ならerdnumとかぶってる 010ならmrdnumと 001ならwrdnum
  reg [5:0] fwdrs2;//100ならerdnumとかぶってる 010ならmrdnumと 段階外で書く

  wire [31:0] rs1wire;
  wire [31:0] rs2wire;
  wire [31:0] rdwirefadd;
  wire [31:0] rdwirefsub;
  wire [31:0] rdwirefmul;
  wire [31:0] rdwirefdiv;
  wire [31:0] rdwirefsqrt;
  wire ovfwire;
  wire rdwireflt;
  wire rdwirefeq;
  wire [31:0] rdwireftoi;
  wire [31:0] rdwireitof;
  assign rs1wire=(fwdrs1[5])?e2rslt:((fwdrs1[4])?e3rslt:((fwdrs1[3])?e4rslt:((fwdrs1[2])?mrslt:((fwdrs1[1])?wrslt:((fwdrs1[0])?w2rslt:rs1)))));
  assign rs2wire=(fwdrs2[5])?e2rslt:((fwdrs2[4])?e3rslt:((fwdrs2[3])?e4rslt:((fwdrs2[2])?mrslt:((fwdrs2[1])?wrslt:((fwdrs2[0])?w2rslt:rs2)))));
      //fwdrs[1]&&mldのときは諦める 遅延
  fadd_d fadd_d(rs1wire,rs2wire,rdwirefadd,ovfwire,clk);//3clk
  fadd_d fsub_add(rs1wire,{(~(rs2wire[31])),rs2wire[30:0]},rdwirefsub,ovfwire,clk);//3clk
  fmul_myd fmul_myd(rs1wire,rs2wire,rdwirefmul,ovfwire,clk);//2clk
  fdiv_d fdiv_d(rs1wire,rs2wire,rdwirefdiv,ovfwire,clk);//5clk
  fsqrt_d fsqrt_d(rs1wire,rdwirefsqrt,clk);//5clkでやる
  flt flt(rs1wire,rs2wire,rdwireflt);
  feq feq(rs1wire,rs2wire,rdwirefeq);
  ftoi_d ftoi_d(rs1wire,opinst[2],rdwireftoi,clk);
  itof itof(rs1wire,rdwireitof);



  reg stenablereg_a;//これはe段階で書く
  //reg [31:0] w_data_a_reg;

  wire [31:0] instout;
  reg [31:0] instoutregf;
  reg [31:0] instoutreg;
  reg [31:0] instoutreg2;
  reg [31:0] instoutreg3;
  reg [2:0] stop;
  assign instout=(stop[2])?instoutreg:((stop[1]|stop[0])?instoutreg2:instoutregf);
  wire jumpwire;
  reg jumpreg;
  reg firstin;
  reg [1:0] progend;

  reg [1:0] startwait;

  reg [22:0] memaddrreg;
  reg [31:0] memdatareg;

//load store
  assign memaddr_a = {9'b0,memaddrreg}; //なぜかここにeldによる分岐があった 怪しい
//pc
  assign memaddr_b = (stage[4]&&(e2jalr||jumpreg))?({9'b0,e2nextpc}):((stage[5]&&ejal)?{9'b0,enextpc}:{9'b0,fpcbf});
      //instoutを読んで分岐予測する予定のところ
      //このあたりの加算が遅延になるかも
  assign w_data_a = memdatareg;
  assign w_data_b = 32'b0;
  assign wenable_a = (stenablereg_a&&stage[4])?4'b1111:0;
  assign wenable_b = 0;
  assign en_ab = rst;

  integer i;


  //debug
 // wire addrcheck;
 // assign addrcheck=(memaddr_a<32'd2457600)?1:0;




  assign jumpwire=
       (~ebrnc)?0:(
         (opinst[2])?(
           (opinst[1])?(
             (opinst[0])?((rs1wire>=rs2wire)?1:0):((rs1wire<rs2wire)?1:0)
           ):(
             (opinst[0])?(
               (rs1wire[31]^rs2wire[31])?rs2wire[31]:((rs2wire[30:0]<rs1wire[30:0])?(~rs2wire[31]):(rs2wire[31]))
             ):(
               (rs1wire[31]^rs2wire[31])?rs1wire[31]:((rs1wire[30:0]<rs2wire[30:0])?(~rs1wire[31]):(rs1wire[31]))
             )
           )
         ):(
           (opinst[0])?((rs1wire!=rs2wire)?1:0):((rs1wire==rs2wire)?1:0)
         )
       );





  always @(posedge clk) begin
    //debug 
    //if (stage[0]) begin
    //  instcount<=instcount+1;
    //end

    if (~rst) begin
      //instcount<=0;
      enextpc<=0;
      e2nextpc<=0;
      //mnextpc<=0;
      //fwnextpc<=0; 
      //enotnextpc<=0;
      //wnotnextpc<=0;
      fpcbf<=0;
      fpc<=0;
      f2pc<=0;
      dpc<=0;
      epc<=0;
      e2pc<=0;
      e3pc<=0;
      e4pc<=0;
      mpc<=0;
      wpc<=0; 
      for (i=0;i<32;i=i+1)
        mainreg[i]<=0;
      for (i=0;i<32;i=i+1)
        mainfreg[i]<=0;
      //opcode<=0;
      erdnum<=0;
      e2rdnum<=0;
      e3rdnum<=0;
      mrdnum<=0;
      wrdnum<=0;
      rs1<=0;
      rs2<=0;
      e2rslt<=0;
      e3rslt<=0;
      mrslt<=0;
      wrslt<=0; 
      w2rslt<=0;
      imm<=0;
      firstin<=0;
      progend<=0;
      memaddrreg<=0;
      memdatareg<=0;
        
      //jump<=0; 
      ebrnc<=0;
      e2brnc<=0;
      //mbrnc<=0;
      //wbrnc<=0; 
      opp<=0;
      eld<=0;
      e2ld<=0;
      e3ld<=0;
      mld<=0;
      st<=0;
      opinst<=0;
      is_arith<=0;
      finst<=0;
      fopinst<=0;
      efadd<=0;
      efsub<=0;
      efmul<=0;
      efsqrt<=0;
      efdiv<=0;
      e2fadd<=0;
      e2fsub<=0;
      e3fadd<=0;
      e3fsub<=0;
      e4fadd<=0;
      e4fsub<=0;
      e2fmul<=0;
      e2fsqrt<=0;
      e3fsqrt<=0;
      e4fsqrt<=0;
      e5fsqrt<=0;
      e2fdiv<=0;
      e3fdiv<=0;
      e4fdiv<=0;
      e3fdiv<=0;
      e4fdiv<=0;
      e5fdiv<=0;
      eftoi<=0;
      e2ftoi<=0;

      stage<=0;
      //rs1add<=0;
      //rs2add<=0;
      fwdrs1<=0;
      fwdrs2<=0;

      stenablereg_a<=0;
      //w_data_a_reg<=f0;

      stop<=0;
      instoutregf<=0;
      instoutreg<=0;
      instoutreg2<=0;
      instoutreg3<=0;

      einp<=0;
      e2inp<=0;
      eoutp<=0;
      e2outp<=0;
      ejal<=0;
      ejalr<=0;
      e2jalr<=0;
      jumpreg<=0;
      startwait<=0;

      io_awaddr<=0;
      io_awvalid<=0;
      io_wvalid<=0;
      io_wdata<=0;
      io_wstrb<=0;
      io_bready<=0;
      io_arvalid<=0;
      io_araddr<=0;
      io_rready<=0;
      io_state<=0;
      //countregtest<=0;
      //incounter<=0;
      //firstout<=0;
     

    end else begin
      stage<={1'b1,stage[8:1]};
      if (startwait==2'b0) begin
        stage<=0;
        startwait<=2'b1;
        fpcbf<=32'b0;
      end
      if (startwait==2'b1) begin
        stage<=9'b100000000;
        startwait<=2'b11;
        fpc<=f2pc;
        fpcbf<=23'b100;
        f2pc<=memaddr_b;
      end

      io_rready<=0;
      io_bready<=0;
      if (io_arvalid&&io_arready) begin
        io_arvalid<=0;
      end
      stenablereg_a<=0;
      jumpreg<=0;


      if (stop[2]) begin
        instoutreg<=instoutreg;
        if (stop[1]) begin
          instoutreg2<=instoutreg2;
          if (stop[0]) begin
            instoutreg3<=instoutreg3;
          end else begin
            instoutreg3<=instoutregf;
          end
        end else begin
          if (stop[0]) begin
            instoutreg2<=instoutreg2;
          end else begin
            instoutreg2<=instoutregf;
          end
        end
      end else begin
        if (stop[0]) begin
          instoutreg<=instoutreg2;
          instoutreg2<=instoutreg3;
        end else begin
          instoutreg2<=instoutregf;
          if (stop[1]) begin
            instoutreg<=instoutreg2;
          end else begin
            instoutreg<=instoutregf;
          end
        end
      end
      stop<={1'b0,stop[2:1]};
      instoutregf<=instoutwire;

      //fetch
      if (stage[8]) begin
        fpcbf<=memaddr_b+23'b100;
        f2pc<=memaddr_b;
        fpc<=f2pc;
      end

      if (stage[7]) begin
        dpc<=fpc;
      end

      //decode
      if (stage[6]) begin
        epc<=dpc;

        //opcode<=instout[6:2];
        erdnum<={2'b10,instout[11:7]};
        if (~(|instout[11:7])) begin
          erdnum<=0;
        end
        //rs1add<={2'b10,instout[19:15]};
        //rs2add<={2'b10,instout[24:20]};

        ebrnc<=0;
        opp<=0;
        is_arith<=0;
        opinst<=3'b0;
        eld<=0;
        st<=0;
        einp<=0;
        eoutp<=0;
        finst<=0;
        fopinst<=0;
        efadd<=0;
        efsub<=0;
        efmul<=0;
        efsqrt<=0;
        efdiv<=0;
        fwdrs1<=0;
        fwdrs2<=0;
        ejal<=0;
        ejalr<=0;
        eftoi<=0;

        if (instout[6:2]==5'b01101) begin //LUI(即値をレジスタに 下位12は0)
          rs1<={instout[31:12],12'b0};
          rs2<=32'b0;
          opp<=1;
        end
        if (instout[6:2]==5'b00101) begin //AUIPC  即値+pc
          rs1<={instout[31:12],12'b0};
          rs2<={9'b0,dpc};//pcの長さで変える必要あり
          opp<=1;
        end
        if (instout[6:2]==5'b11011) begin //JAL rdに次pc格納 pc+=imm
          //rs1<={9'b0,dpc};
          rs2<={9'b0,(dpc[22:2]+21'b1),2'b0};
          //imm<={{12{instout[31]}},instout[19:12],instout[20],instout[30:21],1'b0};
          ejal<=1;
          stage[6]<=0;
          enextpc<={9'b0,({{3{instout[31]}},instout[19:12],instout[20],instout[30:22]}+dpc[22:2]),2'b0};
        end
        if (instout[6:2]==5'b11001) begin //JALR rdに次pc格納 pc=rs1+imm
          rs1<=mainreg[instout[19:15]];
          rs2<={9'b0,(dpc[22:2]+21'b1),2'b0};
          imm<={{21{instout[31]}},instout[30:20]};
          ejalr<=1;
          stage[6]<=0;
        end
        if (instout[6:2]==5'b11000) begin //BRANCH
          rs1<=mainreg[instout[19:15]];
          rs2<=mainreg[instout[24:20]];
          enextpc<=dpc;
          imm<={{20{instout[31]}},instout[7],instout[30:25],instout[11:8],1'b0};
          
          opinst<=instout[14:12];
          ebrnc<=1; 
          erdnum<=0;
            //分岐(ジャンプする方で)予測するときはenextpcをpc+4にする
        end
        if (instout[6:2]==5'b00100) begin //OP-IMM
          rs1<=mainreg[instout[19:15]];
          rs2<={{21{instout[31]}},instout[30:20]};//20では？(それかまとめて21)(直した)
          opinst<=instout[14:12];
          if (instout[14:12]==3'b101) begin
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
          rs1<=mainreg[instout[19:15]];
          imm<={{21{instout[31]}},instout[30:20]};
          eld<=1;
        end
        if(instout[6:2]==5'b01000) begin//STORE
          rs1<=mainreg[instout[19:15]];
          rs2<=mainreg[instout[24:20]];//e段階でrs2(wire)をw_data_a_regにいれる
          imm<={{21{instout[31]}},instout[30:25],instout[11:7]}; //e段階でrs1とimmを足してwrsltにいれる
          st<=1;
          erdnum<=0;
        end
        if(instout[6:2]==5'b00001) begin//flw
          rs1<=mainreg[instout[19:15]];
          imm<={{21{instout[31]}},instout[30:20]};
          eld<=1;
          erdnum<={2'b11,instout[11:7]};
        end
        if(instout[6:2]==5'b01001) begin//fsw
          rs1<=mainreg[instout[19:15]];
          rs2<=mainfreg[instout[24:20]];
          imm<={{21{instout[31]}},instout[30:25],instout[11:7]};
          st<=1;
          erdnum<=0;
        end
        if(instout[6:2]==5'b00010) begin//IO このへんのinstoutは変えていきたい
          rs1<=mainreg[instout[19:15]];
          einp<=~instout[12];
          eoutp<=instout[12];
          io_araddr<=4'h8;
          io_arvalid<=1;
          io_state<=0;
          if (instout[12]) begin //out
            //fwdrs1<=0;
            erdnum<=0;
          end
          stage[6]<=0;
          if (~firstin) begin
            io_awaddr<=4'h4;
            io_state<=3'h7;
            io_awvalid<=1;
            io_wdata<=32'haa;
            io_wvalid<=1;
            io_arvalid<=0;
          end
          firstin<=1;
          fpcbf<=fpcbf;
        end
        if(instout[6:2]==5'b10100) begin //F-OPP
          finst<=1;
          opinst<={instout[13:12],~(instout[13]|instout[12])}; //flt/feq fsgnj で使う
            //100->feq xor
            //010->flt n
            //001->そのまま
          fopinst<=instout[31:27];
          rs2<=mainfreg[instout[24:20]];
          rs1<=mainfreg[instout[19:15]]; 
          erdnum<={2'b11,instout[11:7]};
          if (instout[31:27]==5'b10100||instout[31:27]==5'b11000||instout[31:27]==5'b11100) begin //fcvt fmv flt feq
            erdnum<={2'b10,instout[11:7]};
            if (~(|instout[11:7])) begin
              erdnum<=0;
            end
          end
          if (instout[31:27]==5'b11010||instout[31:27]==5'b11110) begin //fcvt fmv
            rs1<=mainreg[instout[19:15]];
          end
          if (instout[31:27]==5'b00000) begin //fadd 2
              efadd<=1;
          end
          if (instout[31:27]==5'b00001) begin //fsub 2
              efsub<=1;
          end
          if (instout[31:27]==5'b00010) begin //fmul 2
              efmul<=1;
          end
          if (instout[31:27]==5'b00011) begin //fdiv 4
              efdiv<=1;
          end 
          if (instout[31:27]==5'b01011) begin //fsqrt 2
              efsqrt<=1;
          end
          if (instout[31:27]==5'b11000) begin //fcvt f2i
              eftoi<=1;
          end 
        end
          //if (instout[25]) begin
          //  finst<=0;
          //end

        if (instout[6:2]==5'b11000||instout[6:2]==5'b01100||instout[6:2]==5'b01000||instout[6:2]==5'b11001||instout[6:2]==5'b00100||instout[6:2]==5'b00000||instout[6:2]==5'b00001||instout[6:2]==5'b01001||(instout[6:2]==5'b10100&&instout[31:30]==2'b11&&instout[28:27]==2'b10)||(instout[6:2]==5'b00010&&instout[12])) begin
          if ({2'b10,instout[19:15]}==erdnum&&stage[5]) begin
            fwdrs1[5]<=1;
            if (eld||eftoi) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[5]<=0;
              if (instout[6:2]==5'b11001) begin
                stage[6]<=1;
              end
            end
          end
          if ({2'b10,instout[19:15]}==e2rdnum&&stage[4]) begin
            fwdrs1[4]<=1;
            if (e2ld) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[5]<=0;
              if (instout[6:2]==5'b11001) begin
                stage[6]<=1;
              end
            end
          end
          if ({2'b10,instout[19:15]}==e3rdnum&&stage[3]) begin
            fwdrs1[3]<=1;
            if (e3ld) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[5]<=0;
              if (instout[6:2]==5'b11001) begin
                stage[6]<=1;
              end
            end
          end
          if ({2'b10,instout[19:15]}==e4rdnum&&stage[2]) begin
            fwdrs1[2]<=1;
          end
          if ({2'b10,instout[19:15]}==mrdnum&&stage[1]) begin
            fwdrs1[1]<=1;
          end
          if ({2'b10,instout[19:15]}==wrdnum&&stage[0]) begin
            fwdrs1[0]<=1;
          end
        end
        if (instout[6:2]==5'b10100&&(instout[31:30]!=2'b11||instout[28:27]!=2'b10)) begin
          if ({2'b11,instout[19:15]}==erdnum&&stage[5]) begin
            fwdrs1[5]<=1;
            if (eld||efadd||efsub||efmul||efsqrt||efdiv) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[5]<=0;
            end
          end
          if ({2'b11,instout[19:15]}==e2rdnum&&stage[4]) begin
            fwdrs1[4]<=1;
            if (e2ld||e2fdiv||e2fsqrt||e2fadd||e2fsub) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[5]<=0;
            end
          end
          if ({2'b11,instout[19:15]}==e3rdnum&&stage[3]) begin
            fwdrs1[3]<=1;
            if (e3ld||e3fdiv||e3fsqrt||e3fadd||e3fsub) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[5]<=0;
            end
          end
          if ({2'b11,instout[19:15]}==e4rdnum&&stage[2]) begin
            fwdrs1[2]<=1;
            if (e4fdiv||e4fsqrt) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[5]<=0;
            end
          end
          if ({2'b11,instout[19:15]}==mrdnum&&stage[1]) begin
            fwdrs1[1]<=1;
            /*if (e5fdiv||e5fsqrt) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[5]<=0;
            end*/
          end
          if ({2'b11,instout[19:15]}==wrdnum&&stage[0]) begin
            fwdrs1[0]<=1;
          end
        end
        if (instout[5]&&(instout[3:2]==2'b00)&&((~instout[6])||(instout[6]&&(~instout[4])))) begin
          if ({2'b10,instout[24:20]}==erdnum&&stage[5]) begin
            fwdrs2[5]<=1;
            if (eld) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[5]<=0;
            end
          end
          if ({2'b10,instout[24:20]}==e2rdnum&&stage[4]) begin
            fwdrs2[4]<=1;
            if (e2ld) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[5]<=0;
            end
          end
          if ({2'b10,instout[24:20]}==e3rdnum&&stage[3]) begin
            fwdrs2[3]<=1;
            if (e3ld) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[5]<=0;
            end
          end
          if ({2'b10,instout[24:20]}==e4rdnum&&stage[2]) begin
            fwdrs2[2]<=1;
          end 
          if ({2'b10,instout[24:20]}==mrdnum&&stage[1]) begin
            fwdrs2[1]<=1;
          end 
          if ({2'b10,instout[24:20]}==wrdnum&&stage[0]) begin
            fwdrs2[0]<=1;
          end
        end
        if ((instout[6:2]==5'b10100&&(instout[31:30]!=2'b11||instout[27])&&(instout[31:27]!=5'b01011))||instout[6:2]==5'b01001 ) begin
          if ({2'b11,instout[24:20]}==erdnum&&stage[5]) begin
            fwdrs2[5]<=1;
            if (eld||efadd||efsub||efmul||efsqrt||efdiv) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[5]<=0;
            end
          end
          if ({2'b11,instout[24:20]}==e2rdnum&&stage[4]) begin
            fwdrs2[4]<=1;
            if (e2ld||e2fdiv||e2fsqrt||e2fadd||e2fsub) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[5]<=0;
            end
          end
          if ({2'b11,instout[24:20]}==e3rdnum&&stage[3]) begin
            fwdrs2[3]<=1;
            if (e3ld||e3fdiv||e3fsqrt||e3fadd||e3fsub) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[5]<=0;
            end
          end
          if ({2'b11,instout[24:20]}==e4rdnum&&stage[2]) begin
            fwdrs2[2]<=1;
            if (e4fdiv||e4fsqrt) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[5]<=0;
            end
          end
          if ({2'b11,instout[24:20]}==mrdnum&&stage[1]) begin
            fwdrs2[1]<=1;
            /*if (e5fdiv||e5fsqrt) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[5]<=0;
            end*/
          end
          if ({2'b11,instout[24:20]}==wrdnum&&stage[0]) begin
            fwdrs2[0]<=1;
          end
        end
        if (instout[1:0]!=2'b11) begin
          progend[0]<=1;
        end else begin
          progend[0]<=0;
        end
      end


      if (stage[5]) begin
        if (progend[0]) begin
          progend[1]<=1;
        end
        e2pc<=epc;
        e2rdnum<=erdnum;
        e2ld<=eld;
        e2inp<=einp;
        e2outp<=eoutp;
        e2fadd<=efadd;
        e2fsub<=efsub;
        e2fmul<=efmul;
        e2fsqrt<=efsqrt;
        e2fdiv<=efdiv;
        e2jalr<=ejalr;
        e2brnc<=ebrnc;
        e2ftoi<=eftoi;
        if (opp) begin
          if (opinst==3'b000) begin //ADD
            if (is_arith==0) begin
              e2rslt<=rs1wire+rs2wire;
            end else begin
              e2rslt<=rs1wire-rs2wire;
            end
          end
          if (opinst==3'b001) begin //<<
            e2rslt<=rs1wire<<(rs2wire[4:0]);
          end
          if (opinst==3'b010) begin //<
            //rslt<=($signed(rs1)<$signed(rs2))?1:0;
            if ((rs1wire[31])^(rs2wire[31])) begin
              e2rslt<={31'b0,rs1wire[31]};
            end else begin
              e2rslt<={31'b0,(((rs1wire[30:0])<(rs2wire[30:0]))?(~rs1wire[31]):(rs1wire[31]))};
            end
          end
          if (opinst==3'b011) begin //< unsigned
            e2rslt<=(rs1wire<rs2wire)?32'b1:32'b0;
          end
          if (opinst==3'b100) begin //xor
            e2rslt<=rs1wire^rs2wire;
          end
          if (opinst==3'b101) begin //>>
            if (is_arith==0) begin
              e2rslt<=rs1wire>>(rs2wire[4:0]);
            end else begin
              e2rslt<=rs1wire>>>(rs2wire[4:0]);
            end
          end
          if (opinst==3'b110) begin //or
            e2rslt<=rs1wire|rs2wire;
          end
          if (opinst==3'b111) begin //and
            e2rslt<=rs1wire&rs2wire;
          end
        end
        if (ejal) begin
          e2rslt<=rs2wire;
          stage[7:5]<=0;
        end
        if (ejalr) begin
          e2rslt<=rs2wire;
          e2nextpc<={(rs1wire[22:2]+imm[22:2]),2'b0};
          stage[7:5]<=0;
        end
        if (ebrnc) begin
          if (jumpwire) begin
            stage[7:5]<=0;
          end
          jumpreg<=jumpwire;
          e2nextpc<=enextpc+imm[22:0];
        end
        if (eld||st) begin
          memaddrreg<=rs1wire[22:0]+imm[22:0];
          memdatareg<=rs2wire;
        end
        if (st) begin
          stenablereg_a<=1;
        end
        if (finst) begin
          if (fopinst==5'b00100) begin //fsgnj
            if (opinst[2]) begin //xor
              e2rslt<={(rs2wire[31] ^ rs1wire[31]),rs1wire[30:0]};
            end
            if (opinst[1]) begin //n
              e2rslt<={(~rs2wire[31]),rs1wire[30:0]};
            end
            if (opinst[0]) begin
              e2rslt<={rs2wire[31],rs1wire[30:0]};
            end
          end
          if (fopinst==5'b11110) begin //fmv i2f
              e2rslt<=rs1wire;
          end
          if (fopinst==5'b11100) begin  //fmv f2i
              e2rslt<=rs1wire;
          end
          if (fopinst==5'b11010) begin //fcvt i2f
              e2rslt<=rdwireitof;
          end
          if (fopinst==5'b10100) begin //flt feq
            if (opinst[2]) begin //feq
              e2rslt<={31'b0,rdwirefeq};
            end else begin
              e2rslt<={31'b0,rdwireflt};
            end
          end 
        end
        if (einp) begin
          dpc<=dpc;
          fpc<=fpc;
          f2pc<=f2pc;
          stop[2]<=1;
          if (io_state==3'b11&&io_rvalid) begin
            stage[6:4]<=3'b101;
          end else begin
            fpcbf<=fpcbf;
            stage[6:4]<=3'b010;
          end
          if (io_state==3'b0) begin
            io_rready<=0;
            io_bready<=0;
            if (io_arready) begin
              io_arvalid<=0;
              io_state<=3'b1;
            end else begin
              io_arvalid<=1;
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
              e2rslt<={mainreg[erdnum[4:0]][31:8],io_rdata[7:0]};
              einp<=0;
            end
          end
          if (io_state==3'b111) begin //aw,w両方まつ
            io_rready<=0;
            if (io_awready) begin
              io_awvalid<=0;
              io_state<=3'b110;
            end
            if (io_wready) begin
              io_wvalid<=0;
              io_state<=3'b101;
            end
            if (io_wready&&io_awready) begin
              io_state<=3'b100;
            end
          end
          if (io_state==3'b110) begin //wをまつ
            if (io_wready) begin
              io_wvalid<=0;
              io_state<=3'b101;
            end
          end
          if (io_state==3'b101) begin //awをまつ
            if (io_awready) begin
              io_awvalid<=0;
              io_state<=3'b110;
            end
          end
          if (io_state==3'b100) begin
            if (io_bvalid) begin
              io_bready<=1; //これをおろす
              io_araddr<=4'h8;
              io_arvalid<=1;
              io_state<=0;
            end
          end
        end
        if (eoutp) begin
          dpc<=dpc;
          fpc<=fpc;
          f2pc<=f2pc;
          stop[2]<=1;
          if (~stop[2]) begin
            io_wdata<={24'b0,rs1wire[7:0]};
          end
          if (io_state==3'b101&&io_bvalid) begin
            stage[6:4]<=3'b101;
          end else begin
            fpcbf<=fpcbf;
            stage[6:4]<=3'b010;
          end
          if (io_state==3'b0) begin
            io_rready<=0;
            if (io_arready) begin
              io_arvalid<=0;
              io_state<=3'b1;
            end else begin
              io_arvalid<=1;
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
              eoutp<=0;
            end
          end
        end
      end
      if (stage[4]) begin
        e3pc<=e2pc;
        e3rdnum<=e2rdnum;
        e3ld<=e2ld;
        e3rslt<=e2rslt;
        if (e2jalr) begin
          stage[7:4]<=0;
        end
        if (e2brnc) begin
          if (jumpreg) begin
            stage[7:4]<=0;
          end
        end
        e3fadd<=e2fadd;
        e3fsub<=e2fsub;
        if (e2fmul) begin //fmul 2
          e3rslt<=rdwirefmul;
        end
        if (e2ftoi) begin //ftoi 2
          e3rslt<=rdwireftoi;
        end
        e3fdiv<=e2fdiv;
        e3fsqrt<=e2fsqrt;
      end

      if (stage[3]) begin
        e4pc<=e3pc;
        e4rdnum<=e3rdnum;
        e4rslt<=e3rslt;
        mld<=e3ld;
        e4fadd<=e3fadd;
        e4fsub<=e3fsub;
        e4fdiv<=e3fdiv;
        e4fsqrt<=e3fsqrt;
      end

      if (stage[2]) begin
        mpc<=e4pc;
        mrdnum<=e4rdnum;
        mrslt<=e4rslt;
        if (mld) begin
          mrslt<=r_data_a;
        end
        if (e4fadd) begin
          mrslt<=rdwirefadd;
        end
        if (e4fsub) begin 
          mrslt<=rdwirefsub;
        end
        e5fsqrt<=e4fsqrt;
        e5fdiv<=e4fdiv;
      end


      if (stage[1]) begin
        wpc<=mpc;
        wrdnum<=mrdnum;
        wrslt<=mrslt;
        if (e5fsqrt) begin
          wrslt<=rdwirefsqrt;
        end
        if (e5fdiv) begin
          wrslt<=rdwirefdiv;
        end
      end

      if (stage[0]) begin
        if (wrdnum[6]) begin
          if (wrdnum[5]) begin //float
            mainfreg[wrdnum[4:0]]<=wrslt;
            w2rslt<=wrslt;
          end else begin
            mainreg[wrdnum[4:0]]<=wrslt;
            w2rslt<=wrslt;
          end
        end
        mainreg[0]<=0;
      end
      if (progend[1]) begin
        stage<=0;
      end
    end
  end

endmodule

`default_nettype wire
