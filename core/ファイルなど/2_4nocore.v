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
   output wire [31:0] memaddr_as,
   output wire [31:0] w_data_as,
   output wire [3:0] wenable_as,
   input wire [31:0] r_data_as,
   output wire [31:0] memaddr_bs,
   output wire [31:0] w_data_bs,
   output wire [3:0] wenable_bs,
   input wire [31:0] instoutwires,

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



  reg [13:0] enextpc;
  reg [13:0] e2nextpc;

  reg [13:0] fpcbf;
  reg [13:0] fpc;
  reg [13:0] f2pc;
  reg [13:0] dpc;
  reg [13:0] epc;
  reg [31:0] mainreg[31:0];
  reg [31:0] mainfreg[31:0];
  reg [6:0] erdnum;
  reg [6:0] e2rdnum;
  reg [6:0] e3rdnum;
  reg [6:0] e4rdnum;
  reg [6:0] e5rdnum;
  reg [6:0] mrdnum;
  reg [6:0] wrdnum;//書き込みレジスタ 4 1->float 5 0->書き込まない
  reg [31:0] rs1;
  reg [31:0] rs2;
  reg [31:0] e2rslt;
  reg [31:0] e3rslt;
  reg [31:0] e4rslt;
  reg [31:0] e5rslt;
  reg [31:0] mrslt;
  reg [31:0] wrslt;
  reg [31:0] w2rslt;//(フォワーディング用 該当段階で書き込む)
  reg [31:0] e2rslts;
  reg [31:0] e3rslts;
  reg [31:0] e4rslts;
  reg [31:0] e5rslts;
  reg [31:0] mrslts;
  reg [31:0] wrslts;
  reg [31:0] w2rslts;//(フォワーディング用 該当段階で書き込む)
   //レジスタ配列をレジスタの値から参照するのを防ぐ
   //inst->rs1 rs2->mrslt->wrslt
  reg [18:0] imm;

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
  reg e3fmul;
  reg e2fsqrt;
  reg e3fsqrt;
  reg e4fsqrt;
  reg e5fsqrt;
  reg e6fsqrt;
  reg e2fdiv;
  reg e3fdiv;
  reg e4fdiv;
  reg e5fdiv;
  reg e6fdiv;
  reg eftoi;
  reg e2ftoi;
  reg eitof;
  reg e2itof;
  reg eoutp;
  reg einp;
  reg e2inp;
  reg e2outp; 

  reg ejal;
  reg ejalr;
  reg e2jalr;

  reg [9:0] stage;//各段階が有効かどうか
  reg [9:0] stages;//各段階が有効かどうか
    //有効でないならフォワーディング等をする必要がない 4 fetch -> 0 write
  reg e3rfld;
  reg e4rfld;
  reg e3rflds;
  reg e4rflds;
  reg e3sl;
  reg e4sl;
  reg e3sls;
  reg e4sls;
  reg e2st;
  reg e2sts;
  reg sakireg2;



    // これがerdnum wrdnumとかぶってたら wrslt frsltから引っ張ってくる
    //ここのstageの値は移ったあと
  reg [6:0] fwdrs1;//100ならerdnumとかぶってる 010ならmrdnumと 001ならwrdnum
  reg [6:0] fwdrs2;//100ならerdnumとかぶってる 010ならmrdnumと 段階外で書く
  reg [6:0] fwdsrs1;//100ならerdnumとかぶってる 010ならmrdnumと 001ならwrdnum
  reg [6:0] fwdsrs2;//100ならerdnumとかぶってる 010ならmrdnumと 段階外で書く

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
  assign rs1wire=(fwdrs1[6])?e2rslt:((fwdsrs1[6])?e2rslts:((fwdrs1[5])?e3rslt:((fwdsrs1[5])?e3rslts:((fwdrs1[4])?e4rslt:((fwdsrs1[4])?e4rslts:((fwdrs1[3])?e5rslt:((fwdsrs1[3])?e5rslts:((fwdrs1[2])?mrslt:((fwdsrs1[2])?mrslts:((fwdrs1[1])?wrslt:((fwdsrs1[1])?wrslts:((fwdrs1[0])?w2rslt:((fwdsrs1[0])?w2rslts:rs1)))))))))))));
  assign rs2wire=(fwdrs2[6])?e2rslt:((fwdsrs2[6])?e2rslts:((fwdrs2[5])?e3rslt:((fwdsrs2[5])?e3rslts:((fwdrs2[4])?e4rslt:((fwdsrs2[4])?e4rslts:((fwdrs2[3])?e5rslt:((fwdsrs2[3])?e5rslts:((fwdrs2[2])?mrslt:((fwdsrs2[2])?mrslts:((fwdrs2[1])?wrslt:((fwdsrs2[1])?wrslts:((fwdrs2[0])?w2rslt:((fwdsrs2[0])?w2rslts:rs2)))))))))))));
      //fwdrs[1]&&mldのときは諦める 遅延
  fadd_d fadd_d(rs1wire,rs2wire,rdwirefadd,ovfwire,clk);//3clk
  fadd_d fsub_add(rs1wire,{(~(rs2wire[31])),rs2wire[30:0]},rdwirefsub,ovfwire,clk);//3clk
  fmul_myd4 fmul_myd4(rs1wire,rs2wire,rdwirefmul,ovfwire,clk);//2clk
  fdiv_d fdiv_d(rs1wire,rs2wire,rdwirefdiv,ovfwire,clk);//5clk
  fsqrt_d fsqrt_d(rs1wire,rdwirefsqrt,clk);//5clkでやる
  flt flt(rs1wire,rs2wire,rdwireflt);
  feq feq(rs1wire,rs2wire,rdwirefeq);
  ftoi_d ftoi_d(rs1wire,opinst[2],rdwireftoi,clk);
  itof_d itof_d(rs1wire,rdwireitof,clk);



  reg stenablereg_a;//これはe段階で書く
  //reg [31:0] w_data_a_reg;

  wire [31:0] instout;
  reg [31:0] instoutregf;
  reg [31:0] instoutreg;
  reg [31:0] instoutreg2;
  reg [31:0] instoutreg3;
  reg [2:0] stop;
  reg [2:0] stops;
  assign instout=(stop[2])?instoutreg:((stop[1]|stop[0])?instoutreg2:instoutregf);
  wire jumpwire;
  reg jumpreg;
  reg firstin;
  reg [1:0] progend;
  reg [1:0] progends;

  reg [1:0] startwait;

  reg [18:0] memaddrreg;
  reg [31:0] memdatareg;
  reg ejals;
  reg ejalrs;
  reg e2jalrs;
  reg jumpregs;


//load store
  assign memaddr_a = {11'b0,memaddrreg,2'b0}; //なぜかここにeldによる分岐があった 怪しい
//pc
  assign memaddr_b = (stage[5]&&(e2jalr||jumpreg)||stages[5]&&(e2jalrs||jumpregs))?({16'b0,e2nextpc,2'b0}):((stage[6]&&ejal||stages[6]&&ejals)?{16'b0,enextpc,2'b0}:{16'b0,fpcbf,2'b0});
      //instoutを読んで分岐予測する予定のところ
      //このあたりの加算が遅延になるかも
  assign w_data_a = memdatareg;
  assign w_data_b = 32'b0;
  assign wenable_a = (stenablereg_a&&stage[5])?4'b1111:0;
  assign wenable_b = 0;
  assign en_ab = rst;

  integer i;

  wire saki;//1なら先に行っている命令
  reg sakireg;
  assign saki=sakireg?((stop[2]&&(~stops[2]))?0:1):((stops[2]&&(~stop[2]))?1:0);


  reg [13:0] enextpcs;
  reg [13:0] e2nextpcs;

  reg [13:0] fpcbfs;
  reg [13:0] fpcs;
  reg [13:0] f2pcs;
  reg [13:0] dpcs;
  reg [13:0] epcs;
  reg [6:0] erdnums;
  reg [6:0] e2rdnums;
  reg [6:0] e3rdnums;
  reg [6:0] e4rdnums;
  reg [6:0] e5rdnums;
  reg [6:0] mrdnums;
  reg [6:0] wrdnums;//書き込みレジスタ 4 1->float 5 0->書き込まない
  reg [31:0] rs1s;
  reg [31:0] rs2s;
   //レジスタ配列をレジスタの値から参照するのを防ぐ
   //inst->rs1 rs2->mrslt->wrslt
  reg [18:0] imms;

//LUI AUIPCはOPに流す
//JAL JALRは半分OPを使う
  //reg ejump;
  //reg jump; //これは確定　e段階に書き込み
     //これが1ならpc++以外の動作　元の名前opc
     //ジャンプ先が予測と一致してる場合は立てない
  reg ebrncs;
  reg e2brncs;
  //reg mbrnc;
  //reg wbrnc; //これが1なら比較命令 opcを後で  rdに書き込まない
  reg opps;//これが1なら演算する
  reg elds;
  reg e2lds;
  reg e3lds;
  reg mlds; //これが1ならLOAD
  reg sts;
  reg [2:0] opinsts;//命令種別判定
  reg is_ariths;//これが1ならarith right shiftで計算 (シフト演算) SUB(ADD)
  //reg is_notfill;
  reg finsts;
  reg [4:0] fopinsts;
  reg efadds;
  reg efsubs;
  reg efmuls;
  reg efsqrts;
  reg efdivs;
  reg e2fadds;
  reg e2fsubs;
  reg e3fadds;
  reg e3fsubs;
  reg e4fadds;
  reg e4fsubs;
  reg e2fmuls;
  reg e3fmuls;
  reg e2fsqrts;
  reg e3fsqrts;
  reg e4fsqrts;
  reg e5fsqrts;
  reg e6fsqrts;
  reg e2fdivs;
  reg e3fdivs;
  reg e4fdivs;
  reg e5fdivs;
  reg e6fdivs;
  reg eftois;
  reg e2ftois;
  reg eitofs;
  reg e2itofs;
  reg eoutps;
  reg einps;
  reg e2inps;
  reg e2outps; 


    //有効でないならフォワーディング等をする必要がない 4 fetch -> 0 write


    // これがerdnum wrdnumとかぶってたら wrslt frsltから引っ張ってくる
    //ここのstageの値は移ったあと
  reg [6:0] fwdrs1s;//100ならerdnumとかぶってる 010ならmrdnumと 001ならwrdnum
  reg [6:0] fwdrs2s;//100ならerdnumとかぶってる 010ならmrdnumと 段階外で書く
  reg [6:0] fwdsrs1s;//100ならerdnumとかぶってる 010ならmrdnumと 001ならwrdnum
  reg [6:0] fwdsrs2s;//100ならerdnumとかぶってる 010ならmrdnumと 段階外で書く

  wire [31:0] rs1wires;
  wire [31:0] rs2wires;
  wire [31:0] rdwirefadds;
  wire [31:0] rdwirefsubs;
  wire [31:0] rdwirefmuls;
  wire [31:0] rdwirefdivs;
  wire [31:0] rdwirefsqrts;
  wire ovfwires;
  wire rdwireflts;
  wire rdwirefeqs;
  wire [31:0] rdwireftois;
  wire [31:0] rdwireitofs;
  assign rs1wires=(fwdrs1s[6])?e2rslts:((fwdsrs1s[6])?e2rslt:((fwdrs1s[5])?e3rslts:((fwdsrs1s[5])?e3rslt:((fwdrs1s[4])?e4rslts:((fwdsrs1s[4])?e4rslt:((fwdrs1s[3])?e5rslts:((fwdsrs1s[3])?e5rslt:((fwdrs1s[2])?mrslts:((fwdsrs1s[2])?mrslt:((fwdrs1s[1])?wrslts:((fwdsrs1s[1])?wrslt:((fwdrs1s[0])?w2rslts:((fwdsrs1s[0])?w2rslt:rs1s)))))))))))));
  assign rs2wires=(fwdrs2s[6])?e2rslts:((fwdsrs2s[6])?e2rslt:((fwdrs2s[5])?e3rslts:((fwdsrs2s[5])?e3rslt:((fwdrs2s[4])?e4rslts:((fwdsrs2s[4])?e4rslt:((fwdrs2s[3])?e5rslts:((fwdsrs2s[3])?e5rslt:((fwdrs2s[2])?mrslts:((fwdsrs2s[2])?mrslt:((fwdrs2s[1])?wrslts:((fwdsrs2s[1])?wrslt:((fwdrs2s[0])?w2rslts:((fwdsrs2s[0])?w2rslt:rs2s)))))))))))));
      //fwdrs[1]&&mldのときは諦める 遅延
  fadd_d fadd_ds(rs1wires,rs2wires,rdwirefadds,ovfwires,clk);//3clk
  fadd_d fsub_adds(rs1wires,{(~(rs2wires[31])),rs2wires[30:0]},rdwirefsubs,ovfwires,clk);//3clk
  fmul_myd4 fmul_myd4s(rs1wires,rs2wires,rdwirefmuls,ovfwires,clk);//2clk
  fdiv_d fdiv_ds(rs1wires,rs2wires,rdwirefdivs,ovfwires,clk);//5clk
  fsqrt_d fsqrt_ds(rs1wires,rdwirefsqrts,clk);//5clkでやる
  flt flts(rs1wires,rs2wires,rdwireflts);
  feq feqs(rs1wires,rs2wires,rdwirefeqs);
  ftoi_d ftoi_ds(rs1wires,opinsts[2],rdwireftois,clk);
  itof_d itof_ds(rs1wires,rdwireitofs,clk);



  reg stenablereg_as;//これはe段階で書く
  //reg [31:0] w_data_a_reg;

  wire [31:0] instouts;
  reg [31:0] instoutregfs;
  reg [31:0] instoutregs;
  reg [31:0] instoutreg2s;
  reg [31:0] instoutreg3s;
  assign instouts=(stops[2])?instoutregs:((stops[1]|stops[0])?instoutreg2s:instoutregfs);
  wire jumpwires;

  reg [18:0] memaddrregs;
  reg [31:0] memdataregs;

//load store
  assign memaddr_as = {11'b0,memaddrregs,2'b0}; //なぜかここにeldによる分岐があった 怪しい
//pc
  assign memaddr_bs = (stages[5]&&(e2jalrs||jumpregs)||stage[5]&&(e2jalr||jumpreg))?({16'b0,e2nextpcs,2'b0}):((stages[6]&&ejals||stage[6]&&ejal)?{16'b0,enextpcs,2'b0}:{16'b0,fpcbfs,2'b0});
      //instoutを読んで分岐予測する予定のところ
      //このあたりの加算が遅延になるかも
  assign w_data_as = memdataregs;
  assign w_data_bs = 32'b0;
  assign wenable_as = (stenablereg_as&&stages[5])?4'b1111:0;
  assign wenable_bs = 0;


  reg [31:0] memdatareg2;
  reg [31:0] memdatareg2s;



  /*wire debugcol;
  assign debugcol=(memaddrregs==memaddrreg&&wenable_a==wenable_as&&wenable_a==4'b1111)?1:0;
  wire debugcol2;
  assign debugcol2=(memaddrregs==memaddrreg&&((wenable_a^wenable_as)==4'b1111)&&((sakireg2&&wenable_as==4'b1111)||((~sakireg2)&&wenable_a==4'b1111)))?1:0;*/





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



  //debug
 // wire addrcheck;
 // assign addrcheck=(memaddr_a<32'd2457600)?1:0;




  assign jumpwire=
         (opinst[2])?((rs1wire[31]^rs2wire[31])?rs1wire[31]:((rs1wire[30:0]<rs2wire[30:0])?(~rs1wire[31]):(rs1wire[31]))
         ):(
           (rs1wire!=rs2wire)?1:0
         );
  assign jumpwires=
         (opinsts[2])?((rs1wires[31]^rs2wires[31])?rs1wires[31]:((rs1wires[30:0]<rs2wires[30:0])?(~rs1wires[31]):(rs1wires[31]))
         ):(
           (rs1wires!=rs2wires)?1:0
         );





  always @(posedge clk) begin
    //debug //
    //if (stage[0]&&stages[0]) begin
    ///  instcount<=instcount+2;
   // end else if (stage[0]||stages[0]) begin
    //  instcount<=instcount+1;
    //end

    if (~rst) begin
     // instcount<=0;
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
      for (i=0;i<32;i=i+1)
        mainreg[i]<=0;
      for (i=0;i<32;i=i+1)
        mainfreg[i]<=0;
      //opcode<=0;
      erdnum<=0;
      e2rdnum<=0;
      e3rdnum<=0;
      e4rdnum<=0;
      e5rdnum<=0;
      mrdnum<=0;
      wrdnum<=0;
      rs1<=0;
      rs2<=0;
      e2rslt<=0;
      e3rslt<=0;
      e4rslt<=0;
      e5rslt<=0;
      mrslt<=0;
      wrslt<=0; 
      w2rslt<=0;
      imm<=0;
      firstin<=0;
      progend<=0;
      progends<=0;
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
      e3fmul<=0;
      e2fsqrt<=0;
      e3fsqrt<=0;
      e4fsqrt<=0;
      e5fsqrt<=0;
      e6fsqrt<=0;
      e2fdiv<=0;
      e3fdiv<=0;
      e4fdiv<=0;
      e3fdiv<=0;
      e4fdiv<=0;
      e5fdiv<=0;
      e6fdiv<=0;
      eftoi<=0;
      e2ftoi<=0;
      eitof<=0;
      e2itof<=0;

      stage<=0;
      //rs1add<=0;
      //rs2add<=0;
      fwdrs1<=0;
      fwdrs2<=0;
      fwdsrs1<=0;
      fwdsrs2<=0;

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

      sakireg<=0;


      enextpcs<=0;
      e2nextpcs<=0;
      //mnextpc<=0;
      //fwnextpc<=0; 
      //enotnextpc<=0;
      //wnotnextpc<=0;
      fpcbfs<=0;
      fpcs<=0;
      f2pcs<=0;
      dpcs<=0;
      epcs<=0;
      erdnums<=0;
      e2rdnums<=0;
      e3rdnums<=0;
      e4rdnums<=0;
      e5rdnums<=0;
      mrdnums<=0;
      wrdnums<=0;
      rs1s<=0;
      rs2s<=0;
      e2rslts<=0;
      e3rslts<=0;
      e4rslts<=0;
      e5rslts<=0;
      mrslts<=0;
      wrslts<=0; 
      w2rslts<=0;
      imms<=0;
      memaddrregs<=0;
      memdataregs<=0;
        
      //jump<=0; 
      ebrncs<=0;
      e2brncs<=0;
      //mbrnc<=0;
      //wbrnc<=0; 
      opps<=0;
      elds<=0;
      e2lds<=0;
      e3lds<=0;
      mlds<=0;
      sts<=0;
      opinsts<=0;
      is_ariths<=0;
      finsts<=0;
      fopinsts<=0;
      efadds<=0;
      efsubs<=0;
      efmuls<=0;
      efsqrts<=0;
      efdivs<=0;
      e2fadds<=0;
      e2fsubs<=0;
      e3fadds<=0;
      e3fsubs<=0;
      e4fadds<=0;
      e4fsubs<=0;
      e2fmuls<=0;
      e3fmuls<=0;
      e2fsqrts<=0;
      e3fsqrts<=0;
      e4fsqrts<=0;
      e5fsqrts<=0;
      e6fsqrts<=0;
      e2fdivs<=0;
      e3fdivs<=0;
      e4fdivs<=0;
      e3fdivs<=0;
      e4fdivs<=0;
      e5fdivs<=0;
      e6fdivs<=0;
      eftois<=0;
      e2ftois<=0;
      eitofs<=0;
      e2itofs<=0;

      stages<=0;
      //rs1add<=0;
      //rs2add<=0;
      fwdrs1s<=0;
      fwdrs2s<=0;
      fwdsrs1s<=0;
      fwdsrs2s<=0;

      stenablereg_as<=0;
      //w_data_a_reg<=f0;

      stops<=0;
      instoutregfs<=0;
      instoutregs<=0;
      instoutreg2s<=0;
      instoutreg3s<=0;

      einps<=0;
      e2inps<=0;
      eoutps<=0;
      e2outps<=0;
      ejals<=0;
      ejalrs<=0;
      e2jalrs<=0;
      jumpregs<=0;
      e3rfld<=0;
      e4rfld<=0;
      e3rflds<=0;
      e4rflds<=0;
      e2st<=0;
      e2sts<=0;
      sakireg2<=0;
      e3sl<=0;
      e4sl<=0;
      e3sls<=0;
      e4sls<=0;

      memdatareg2<=0;
      memdatareg2s<=0;
     

    end else begin
      stage<={1'b1,stage[9:1]};
      stages<={1'b1,stages[9:1]};
      memdatareg2<=memdatareg;
      memdatareg2s<=memdataregs;
      if (startwait==2'b0) begin
        startwait<=2'b1;
        fpcbf<=14'b0;
      end
      if (startwait==2'b1) begin
        stage<=10'b1000000000;
        startwait<=2'b11;
        fpcbf<=14'b10;
        f2pc<=memaddr_b[15:2];
      end

      sakireg<=saki;
      sakireg2<=sakireg;
      io_rready<=0;
      io_bready<=0;
      if (io_arvalid&&io_arready) begin
        io_arvalid<=0;
      end
      if (io_rvalid) begin
        io_rready<=1;
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


      if (startwait==2'b0) begin
        startwait<=2'b1;
        fpcbfs<=14'b1;
      end
      if (startwait==2'b1) begin
        stages<=10'b1000000000;
        startwait<=2'b11;
        fpcbfs<=14'b11;
        f2pcs<=memaddr_bs[15:2];
      end
      stenablereg_as<=0;
      jumpregs<=0;


      if (stops[2]) begin
        instoutregs<=instoutregs;
        if (stops[1]) begin
          instoutreg2s<=instoutreg2s;
          if (stops[0]) begin
            instoutreg3s<=instoutreg3s;
          end else begin
            instoutreg3s<=instoutregfs;
          end
        end else begin
          if (stops[0]) begin
            instoutreg2s<=instoutreg2s;
          end else begin
            instoutreg2s<=instoutregfs;
          end
        end
      end else begin
        if (stops[0]) begin
          instoutregs<=instoutreg2s;
          instoutreg2s<=instoutreg3s;
        end else begin
          instoutreg2s<=instoutregfs;
          if (stops[1]) begin
            instoutregs<=instoutreg2s;
          end else begin
            instoutregs<=instoutregfs;
          end
        end
      end
      stops<={1'b0,stops[2:1]};
      instoutregfs<=instoutwires;

      if (jumpreg&&stage[5]||jumpregs&&stages[5]) begin
        stop<=0;
        stops<=0;
        sakireg<=sakireg2;
      end

      memaddrreg<=0;
      memaddrregs<=1;




      //fetch
      if (stage[9]) begin
        fpcbf<=memaddr_b[15:2]+14'b10;
        f2pc<=memaddr_b[15:2];
        fpc<=f2pc;
      end

      //fetch
      if (stages[9]) begin
        fpcbfs<=memaddr_bs[15:2]+14'b10;
        f2pcs<=memaddr_bs[15:2];
        fpcs<=f2pcs;
      end


      if (stage[8]) begin
        dpc<=fpc;
      end

      if (stages[8]) begin
        dpcs<=fpcs;
      end

      //decode
      if (stage[7]) begin
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
        fwdsrs1<=0;
        fwdsrs2<=0;
        ejal<=0;
        ejalr<=0;
        eftoi<=0;
        eitof<=0;

        if (instout[6:2]==5'b01101) begin //LUI(即値をレジスタに 下位12は0)
          rs1<={instout[31:12],12'b0};
          rs2<=32'b0;
          opp<=1;
        end
        if (instout[6:2]==5'b00101) begin //AUIPC  即値+pc
          rs1<={instout[31:12],12'b0};
          rs2<={16'b0,dpc,2'b0};//pcの長さで変える必要あり
          opp<=1;
        end
        if (instout[6:2]==5'b11011) begin //JAL rdに次pc格納 pc+=imm
          //rs1<={9'b0,dpc};
          rs2<={16'b0,(dpc+14'b1),2'b0};
          //imm<={{12{instout[31]}},instout[19:12],instout[20],instout[30:21],1'b0};
          ejal<=1;
          if (saki) begin
            if (~(instouts[6:5]==2'b11&&instouts[3])) begin
              enextpc<={instout[15:12],instout[20],instout[30:22]}+dpc+1;
              enextpcs<={instout[15:12],instout[20],instout[30:22]}+dpc;
            end
          end else begin
            stages[6]<=0;
            enextpc<={instout[15:12],instout[20],instout[30:22]}+dpc;
            enextpcs<={instout[15:12],instout[20],instout[30:22]}+dpc+1;
          end
        end
        if (instout[6:2]==5'b11001) begin //JALR rdに次pc格納 pc=rs1+imm
          rs1<=mainreg[instout[19:15]];
          rs2<={16'b0,(dpc+14'b1),2'b0};
          imm<={{10{instout[31]}},instout[30:22]};
          ejalr<=1;
          if (~saki) begin
            stages[6]<=0;
          end
        end
        if (instout[6:2]==5'b11000) begin //BRANCH
          rs1<=mainreg[instout[19:15]];
          rs2<=mainreg[instout[24:20]];
          imm<={{9{instout[31]}},instout[7],instout[30:25],instout[11:9]};
          
          opinst<=instout[14:12];
          ebrnc<=1; 
          erdnum<=0;
            //分岐(ジャンプする方で)予測するときはenextpcをpc+4にする
          if (~saki) begin
            stops[2]<=1;
            dpcs<=dpcs;
            fpcs<=fpcs;
            f2pcs<=f2pcs;
            fpcbfs<=fpcbfs;
            stages[6]<=0;
          end
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
          imm<={{10{instout[31]}},instout[30:22]};
          eld<=1;
        end
        if(instout[6:2]==5'b01000) begin//STORE
          rs1<=mainreg[instout[19:15]];
          rs2<=mainreg[instout[24:20]];//e段階でrs2(wire)をw_data_a_regにいれる
          imm<={{10{instout[31]}},instout[30:25],instout[11:9]}; //e段階でrs1とimmを足してwrsltにいれる
          st<=1;
          erdnum<=0;
        end
        if(instout[6:2]==5'b00001) begin//flw
          rs1<=mainreg[instout[19:15]];
          imm<={{10{instout[31]}},instout[30:22]};
          eld<=1;
          erdnum<={2'b11,instout[11:7]};
        end
        if(instout[6:2]==5'b01001) begin//fsw
          rs1<=mainreg[instout[19:15]];
          rs2<=mainfreg[instout[24:20]];
          imm<={{10{instout[31]}},instout[30:25],instout[11:9]};
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
          if (~firstin) begin
            io_awaddr<=4'h4;
            io_state<=3'h7;
            io_awvalid<=1;
            io_wdata<=32'haa;
            io_wvalid<=1;
            io_arvalid<=0;
          end
          if (~saki) begin
            stops[2]<=1;
            dpcs<=dpcs;
            fpcs<=fpcs;
            f2pcs<=f2pcs;
            fpcbfs<=fpcbfs;
            stages[6]<=0;
          end
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
          if (instout[31:27]==5'b11010) begin //fcvt i2f
              eitof<=1;
          end 
        end
          //if (instout[25]) begin
          //  finst<=0;
          //end

        if ((instout[3:2]==2'b0&&(instout[5]||(~instout[6])))||instout[4:2]==3'b1||(instout[6:5]==2'b10&&instout[31:30]==2'b11&&instout[28]==1'b1)||(instout[3:2]==2'b10&&instout[12])) begin
          if (saki) begin
            if (~((instouts[4:3]==2'b0&&(instouts[6:5]==2'b01||(instouts[5]^instouts[2])))||(instouts[6:5]==2'b10&&(~(instouts[31]==1'b1&&instouts[28]==1'b0)))||(instouts[3:2]==2'b10&&instouts[12]) )) begin
              if (instouts[11:7]==instout[19:15]) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b10,instout[19:15]}==erdnum&&stage[6]) begin
            fwdrs1[6]<=1;
            if (eld||eftoi) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b10,instout[19:15]}==e2rdnum&&stage[5]) begin
            fwdrs1[5]<=1;
            if (e2ld) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b10,instout[19:15]}==e3rdnum&&stage[4]) begin
            fwdrs1[4]<=1;
            if (e3ld) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b10,instout[19:15]}==e4rdnum&&stage[3]) begin
            fwdrs1[3]<=1;
          end
          if ({2'b10,instout[19:15]}==e5rdnum&&stage[2]) begin
            fwdrs1[2]<=1;
          end
          if ({2'b10,instout[19:15]}==mrdnum&&stage[1]) begin
            fwdrs1[1]<=1;
          end
          if ({2'b10,instout[19:15]}==wrdnum&&stage[0]) begin
            fwdrs1[0]<=1;
          end
          if ({2'b10,instout[19:15]}==erdnums&&stages[6]) begin
            fwdsrs1[6]<=1;
            if (elds||eftois) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b10,instout[19:15]}==e2rdnums&&stages[5]) begin
            fwdsrs1[5]<=1;
            if (e2lds) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b10,instout[19:15]}==e3rdnums&&stages[4]) begin
            fwdsrs1[4]<=1;
            if (e3lds) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b10,instout[19:15]}==e4rdnums&&stages[3]) begin
            fwdsrs1[3]<=1;
          end
          if ({2'b10,instout[19:15]}==e5rdnums&&stages[2]) begin
            fwdsrs1[2]<=1;
          end
          if ({2'b10,instout[19:15]}==mrdnums&&stages[1]) begin
            fwdsrs1[1]<=1;
          end
          if ({2'b10,instout[19:15]}==wrdnums&&stages[0]) begin
            fwdsrs1[0]<=1;
          end
        end
        if (instout[6:5]==2'b10&&((~instout[31])||(~instout[28]))) begin
          if (saki) begin
            if ((instouts[6:5]==2'b0&&instouts[2]==1'b1)||(instouts[6:5]==2'b10&&((~instouts[31])||instouts[28]))) begin
              if (instouts[11:7]==instout[19:15]) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instout[19:15]}==erdnum&&stage[6]) begin
            fwdrs1[6]<=1;
            if (eld||efadd||efsub||efmul||efsqrt||efdiv||eitof) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[19:15]}==e2rdnum&&stage[5]) begin
            fwdrs1[5]<=1;
            if (e2ld||e2fdiv||e2fsqrt||e2fadd||e2fsub||e2fmul) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[19:15]}==e3rdnum&&stage[4]) begin
            fwdrs1[4]<=1;
            if (e3ld||e3fdiv||e3fsqrt||e3fadd||e3fsub) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[19:15]}==e4rdnum&&stage[3]) begin
            fwdrs1[3]<=1;
            if (e4fdiv||e4fsqrt) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[19:15]}==e5rdnum&&stage[2]) begin
            fwdrs1[2]<=1;
            if (e5fdiv||e5fsqrt) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[19:15]}==mrdnum&&stage[1]) begin
            fwdrs1[1]<=1;
          end
          if ({2'b11,instout[19:15]}==wrdnum&&stage[0]) begin
            fwdrs1[0]<=1;
          end
          if ({2'b11,instout[19:15]}==erdnums&&stages[6]) begin
            fwdsrs1[6]<=1;
            if (elds||efadds||efsubs||efmuls||efsqrts||efdivs||eitofs) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[19:15]}==e2rdnums&&stages[5]) begin
            fwdsrs1[5]<=1;
            if (e2lds||e2fdivs||e2fsqrts||e2fadds||e2fsubs||e2fmuls) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[19:15]}==e3rdnums&&stages[4]) begin
            fwdsrs1[4]<=1;
            if (e3lds||e3fdivs||e3fsqrts||e3fadds||e3fsubs) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[19:15]}==e4rdnums&&stages[3]) begin
            fwdsrs1[3]<=1;
            if (e4fdivs||e4fsqrts) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[19:15]}==e5rdnums&&stages[2]) begin
            fwdsrs1[2]<=1;
            if (e5fdivs||e5fsqrts) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[19:15]}==mrdnums&&stages[1]) begin
            fwdsrs1[1]<=1;
          end
          if ({2'b11,instout[19:15]}==wrdnums&&stages[0]) begin
            fwdsrs1[0]<=1;
          end
        end
        if (instout[5]&&(instout[3:2]==2'b00)) begin
          if (saki) begin
            if (~((instouts[4:3]==2'b0&&(instouts[6:5]==2'b01||(instouts[5]^instouts[2])))||(instouts[6:5]==2'b10&&(~(instouts[31]==1'b1&&instouts[28]==1'b0)))||(instouts[3:2]==2'b10&&instouts[12]) )) begin
              if (instouts[11:7]==instout[24:20]) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b10,instout[24:20]}==erdnum&&stage[6]) begin
            fwdrs2[6]<=1;
            if (eld||eftoi) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b10,instout[24:20]}==e2rdnum&&stage[5]) begin
            fwdrs2[5]<=1;
            if (e2ld) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b10,instout[24:20]}==e3rdnum&&stage[4]) begin
            fwdrs2[4]<=1;
            if (e3ld) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b10,instout[24:20]}==e4rdnum&&stage[3]) begin
            fwdrs2[3]<=1;
          end 
          if ({2'b10,instout[24:20]}==e5rdnum&&stage[2]) begin
            fwdrs2[2]<=1;
          end 
          if ({2'b10,instout[24:20]}==mrdnum&&stage[1]) begin
            fwdrs2[1]<=1;
          end 
          if ({2'b10,instout[24:20]}==wrdnum&&stage[0]) begin
            fwdrs2[0]<=1;
          end
          if ({2'b10,instout[24:20]}==erdnums&&stages[6]) begin
            fwdsrs2[6]<=1;
            if (elds||eftois) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b10,instout[24:20]}==e2rdnums&&stages[5]) begin
            fwdsrs2[5]<=1;
            if (e2lds) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b10,instout[24:20]}==e3rdnums&&stages[4]) begin
            fwdsrs2[4]<=1;
            if (e3lds) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b10,instout[24:20]}==e4rdnums&&stages[3]) begin
            fwdsrs2[3]<=1;
          end 
          if ({2'b10,instout[24:20]}==e5rdnums&&stages[2]) begin
            fwdsrs2[2]<=1;
          end 
          if ({2'b10,instout[24:20]}==mrdnums&&stages[1]) begin
            fwdsrs2[1]<=1;
          end 
          if ({2'b10,instout[24:20]}==wrdnums&&stages[0]) begin
            fwdsrs2[0]<=1;
          end
        end
        if ((instout[6:5]==2'b10&&(~instout[30]))||instout[6:2]==5'b01001 ) begin
          if (saki) begin
            if ((instouts[6:5]==2'b0&&instouts[2]==1'b1)||(instouts[6:5]==2'b10&&((~instouts[31])||instouts[28]))) begin
              if (instouts[11:7]==instout[24:20]) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instout[24:20]}==erdnum&&stage[6]) begin
            fwdrs2[6]<=1;
            if (eld||efadd||efsub||efmul||efsqrt||efdiv||eitof) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[24:20]}==e2rdnum&&stage[5]) begin
            fwdrs2[5]<=1;
            if (e2ld||e2fdiv||e2fsqrt||e2fadd||e2fsub||e2fmul) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[24:20]}==e3rdnum&&stage[4]) begin
            fwdrs2[4]<=1;
            if (e3ld||e3fdiv||e3fsqrt||e3fadd||e3fsub) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[24:20]}==e4rdnum&&stage[3]) begin
            fwdrs2[3]<=1;
            if (e4fdiv||e4fsqrt) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[24:20]}==e5rdnum&&stage[2]) begin
            fwdrs2[2]<=1;
            if (e5fdiv||e5fsqrt) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[24:20]}==mrdnum&&stage[1]) begin
            fwdrs2[1]<=1;
          end
          if ({2'b11,instout[24:20]}==wrdnum&&stage[0]) begin
            fwdrs2[0]<=1;
          end
          if ({2'b11,instout[24:20]}==erdnums&&stages[6]) begin
            fwdsrs2[6]<=1;
            if (elds||efadds||efsubs||efmuls||efsqrts||efdivs||eitofs) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[24:20]}==e2rdnums&&stages[5]) begin
            fwdsrs2[5]<=1;
            if (e2lds||e2fdivs||e2fsqrts||e2fadds||e2fsubs||e2fmuls) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[24:20]}==e3rdnums&&stages[4]) begin
            fwdsrs2[4]<=1;
            if (e3lds||e3fdivs||e3fsqrts||e3fadds||e3fsubs) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[24:20]}==e4rdnums&&stages[3]) begin
            fwdsrs2[3]<=1;
            if (e4fdivs||e4fsqrts) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[24:20]}==e5rdnums&&stages[2]) begin
            fwdsrs2[2]<=1;
            if (e5fdivs||e5fsqrts) begin
              stop[2]<=1;
              dpc<=dpc;
              fpc<=fpc;
              f2pc<=f2pc;
              fpcbf<=fpcbf;
              stage[6]<=0;
              if (~saki) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instout[24:20]}==mrdnums&&stages[1]) begin
            fwdsrs2[1]<=1;
          end
          if ({2'b11,instout[24:20]}==wrdnums&&stages[0]) begin
            fwdsrs2[0]<=1;
          end
        end
        if (instout[1:0]!=2'b11) begin
          progend[0]<=1;
        end else begin
          progend[0]<=0;
        end
      end



      //decode
      if (stages[7]) begin
        epcs<=dpcs;

        //opcode<=instout[6:2];
        erdnums<={2'b10,instouts[11:7]};
        if (~(|instouts[11:7])) begin
          erdnums<=0;
        end
        //rs1add<={2'b10,instout[19:15]};
        //rs2add<={2'b10,instout[24:20]};

        ebrncs<=0;
        opps<=0;
        is_ariths<=0;
        opinsts<=3'b0;
        elds<=0;
        sts<=0;
        einps<=0;
        eoutps<=0;
        finsts<=0;
        fopinsts<=0;
        efadds<=0;
        efsubs<=0;
        efmuls<=0;
        efsqrts<=0;
        efdivs<=0;
        fwdrs1s<=0;
        fwdrs2s<=0;
        fwdsrs1s<=0;
        fwdsrs2s<=0;
        ejals<=0;
        ejalrs<=0;
        eftois<=0;
        eitofs<=0;

        if (instouts[6:2]==5'b01101) begin //LUI(即値をレジスタに 下位12は0)
          rs1s<={instouts[31:12],12'b0};
          rs2s<=32'b0;
          opps<=1;
        end
        if (instouts[6:2]==5'b00101) begin //AUIPC  即値+pc
          rs1s<={instouts[31:12],12'b0};
          rs2s<={16'b0,dpcs,2'b0};//pcの長さで変える必要あり
          opps<=1;
        end
        if (instouts[6:2]==5'b11011) begin //JAL rdに次pc格納 pc+=imm
          //rs1<={9'b0,dpc};
          rs2s<={16'b0,(dpcs+14'b1),2'b0};
          //imm<={{12{instout[31]}},instout[19:12],instout[20],instout[30:21],1'b0};
          ejals<=1;
          if (saki) begin
            stage[6]<=0;
            enextpc<={instouts[15:12],instouts[20],instouts[30:22]}+dpcs+1;
            enextpcs<={instouts[15:12],instouts[20],instouts[30:22]}+dpcs;
          end else begin
            if (~(instout[6:5]==2'b11&&instout[3])) begin
              enextpc<={instouts[15:12],instouts[20],instouts[30:22]}+dpcs;
              enextpcs<={instouts[15:12],instouts[20],instouts[30:22]}+dpcs+1; 
            end
          end
        end
        if (instouts[6:2]==5'b11001) begin //JALR rdに次pc格納 pc=rs1+imm
          rs1s<=mainreg[instouts[19:15]];
          rs2s<={16'b0,(dpcs+14'b1),2'b0};
          imms<={{10{instouts[31]}},instouts[30:22]};
          ejalrs<=1;
          if (saki) begin
            stage[6]<=0;
          end
        end
        if (instouts[6:2]==5'b11000) begin //BRANCH
          rs1s<=mainreg[instouts[19:15]];
          rs2s<=mainreg[instouts[24:20]];
          imms<={{9{instouts[31]}},instouts[7],instouts[30:25],instouts[11:9]};
          
          opinsts<=instouts[14:12];
          ebrncs<=1; 
          erdnums<=0;
            //分岐(ジャンプする方で)予測するときはenextpcをpc+4にする
          if (saki) begin
            stop[2]<=1;
            dpc<=dpc;
            fpc<=fpc;
            f2pc<=f2pc;
            fpcbf<=fpcbf;
            stage[6]<=0;
          end
        end
        if (instouts[6:2]==5'b00100) begin //OP-IMM
          rs1s<=mainreg[instouts[19:15]];
          rs2s<={{21{instouts[31]}},instouts[30:20]};//20では？(それかまとめて21)(直した)
          opinsts<=instouts[14:12];
          if (instouts[14:12]==3'b101) begin
            is_ariths<=instouts[30];
          end
          opps<=1;
        end
        if(instouts[6:2]==5'b01100) begin //OP
          rs1s<=mainreg[instouts[19:15]];
          rs2s<=mainreg[instouts[24:20]];
          opinsts<=instouts[14:12];
          is_ariths<=instouts[30];
          opps<=1;
        end
        if(instouts[6:2]==5'b00000) begin//LOAD
          rs1s<=mainreg[instouts[19:15]];
          imms<={{10{instouts[31]}},instouts[30:22]};
          elds<=1;
        end
        if(instouts[6:2]==5'b01000) begin//STORE
          rs1s<=mainreg[instouts[19:15]];
          rs2s<=mainreg[instouts[24:20]];//e段階でrs2(wire)をw_data_a_regにいれる
          imms<={{10{instouts[31]}},instouts[30:25],instouts[11:9]}; //e段階でrs1とimmを足してwrsltにいれる
          sts<=1;
          erdnums<=0;
        end
        if(instouts[6:2]==5'b00001) begin//flw
          rs1s<=mainreg[instouts[19:15]];
          imms<={{10{instouts[31]}},instouts[30:22]};
          elds<=1;
          erdnums<={2'b11,instouts[11:7]};
        end
        if(instouts[6:2]==5'b01001) begin//fsw
          rs1s<=mainreg[instouts[19:15]];
          rs2s<=mainfreg[instouts[24:20]];
          imms<={{10{instouts[31]}},instouts[30:25],instouts[11:9]};
          sts<=1;
          erdnums<=0;
        end
        if(instouts[6:2]==5'b00010) begin//IO このへんのinstoutは変えていきたい
          rs1s<=mainreg[instouts[19:15]];
          einps<=~instouts[12];
          eoutps<=instouts[12];
          io_araddr<=4'h8;
          io_arvalid<=1;
          io_state<=0;
          if (instouts[12]) begin //out
            //fwdrs1<=0;
            erdnums<=0;
          end
          if (~firstin) begin
            io_awaddr<=4'h4;
            io_state<=3'h7;
            io_awvalid<=1;
            io_wdata<=32'haa;
            io_wvalid<=1;
            io_arvalid<=0;
          end
          if (saki) begin
            stop[2]<=1;
            dpc<=dpc;
            fpc<=fpc;
            f2pc<=f2pc;
            fpcbf<=fpcbf;
            stage[6]<=0;
          end
        end
        if(instouts[6:2]==5'b10100) begin //F-OPP
          finsts<=1;
          opinsts<={instouts[13:12],~(instouts[13]|instouts[12])}; //flt/feq fsgnj で使う
            //100->feq xor
            //010->flt n
            //001->そのまま
          fopinsts<=instouts[31:27];
          rs2s<=mainfreg[instouts[24:20]];
          rs1s<=mainfreg[instouts[19:15]]; 
          erdnums<={2'b11,instouts[11:7]};
          if (instouts[31:27]==5'b10100||instouts[31:27]==5'b11000||instouts[31:27]==5'b11100) begin //fcvt fmv flt feq
            erdnums<={2'b10,instouts[11:7]};
            if (~(|instouts[11:7])) begin
              erdnums<=0;
            end
          end
          if (instouts[31:27]==5'b11010||instouts[31:27]==5'b11110) begin //fcvt fmv
            rs1s<=mainreg[instouts[19:15]];
          end
          if (instouts[31:27]==5'b00000) begin //fadd 2
              efadds<=1;
          end
          if (instouts[31:27]==5'b00001) begin //fsub 2
              efsubs<=1;
          end
          if (instouts[31:27]==5'b00010) begin //fmul 2
              efmuls<=1;
          end
          if (instouts[31:27]==5'b00011) begin //fdiv 4
              efdivs<=1;
          end 
          if (instouts[31:27]==5'b01011) begin //fsqrt 2
              efsqrts<=1;
          end
          if (instouts[31:27]==5'b11000) begin //fcvt f2i
              eftois<=1;
          end 
          if (instouts[31:27]==5'b11010) begin //fcvt i2f
              eitofs<=1;
          end 
        end
          //if (instout[25]) begin
          //  finst<=0;
          //end

        if ((instouts[3:2]==2'b0&&(instouts[5]||(~instouts[6])))||instouts[4:2]==3'b1||(instouts[6:5]==2'b10&&instouts[31:30]==2'b11&&instouts[28]==1'b1)||(instouts[3:2]==2'b10&&instouts[12])) begin
          if (~saki) begin
            if (~((instout[4:3]==2'b0&&(instout[6:5]==2'b01||(instout[5]^instout[2])))||(instout[6:5]==2'b10&&(~(instout[31]==1'b1&&instout[28]==1'b0)))||(instout[3:2]==2'b10&&instout[12]) )) begin
              if (instout[11:7]==instouts[19:15]) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b10,instouts[19:15]}==erdnums&&stages[6]) begin
            fwdrs1s[6]<=1;
            if (elds||eftois) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b10,instouts[19:15]}==e2rdnums&&stages[5]) begin
            fwdrs1s[5]<=1;
            if (e2lds) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b10,instouts[19:15]}==e3rdnums&&stages[4]) begin
            fwdrs1s[4]<=1;
            if (e3lds) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b10,instouts[19:15]}==e4rdnums&&stages[3]) begin
            fwdrs1s[3]<=1;
          end
          if ({2'b10,instouts[19:15]}==e5rdnums&&stages[2]) begin
            fwdrs1s[2]<=1;
          end
          if ({2'b10,instouts[19:15]}==mrdnums&&stages[1]) begin
            fwdrs1s[1]<=1;
          end
          if ({2'b10,instouts[19:15]}==wrdnums&&stages[0]) begin
            fwdrs1s[0]<=1;
          end
          if ({2'b10,instouts[19:15]}==erdnum&&stage[6]) begin
            fwdsrs1s[6]<=1;
            if (eld||eftoi) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b10,instouts[19:15]}==e2rdnum&&stage[5]) begin
            fwdsrs1s[5]<=1;
            if (e2ld) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b10,instouts[19:15]}==e3rdnum&&stage[4]) begin
            fwdsrs1s[4]<=1;
            if (e3ld) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b10,instouts[19:15]}==e4rdnum&&stage[3]) begin
            fwdsrs1s[3]<=1;
          end
          if ({2'b10,instouts[19:15]}==e5rdnum&&stage[2]) begin
            fwdsrs1s[2]<=1;
          end
          if ({2'b10,instouts[19:15]}==mrdnum&&stage[1]) begin
            fwdsrs1s[1]<=1;
          end
          if ({2'b10,instouts[19:15]}==wrdnum&&stage[0]) begin
            fwdsrs1s[0]<=1;
          end
        end
        if (instouts[6:5]==2'b10&&((~instouts[31])||(~instouts[28]))) begin
          if (~saki) begin
            if ((instout[6:5]==2'b0&&instout[2]==1'b1)||(instout[6:5]==2'b10&&((~instout[31])||instout[28]))) begin
              if (instout[11:7]==instouts[19:15]) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[19:15]}==erdnums&&stages[6]) begin
            fwdrs1s[6]<=1;
            if (elds||efadds||efsubs||efmuls||efsqrts||efdivs||eitofs) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[19:15]}==e2rdnums&&stages[5]) begin
            fwdrs1s[5]<=1;
            if (e2lds||e2fdivs||e2fsqrts||e2fadds||e2fsubs||e2fmuls) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[19:15]}==e3rdnums&&stages[4]) begin
            fwdrs1s[4]<=1;
            if (e3lds||e3fdivs||e3fsqrts||e3fadds||e3fsubs) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[19:15]}==e4rdnums&&stages[3]) begin
            fwdrs1s[3]<=1;
            if (e4fdivs||e4fsqrts) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[19:15]}==e5rdnums&&stages[2]) begin
            fwdrs1s[2]<=1;
            if (e5fdivs||e5fsqrts) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[19:15]}==mrdnums&&stages[1]) begin
            fwdrs1s[1]<=1;
          end
          if ({2'b11,instouts[19:15]}==wrdnums&&stages[0]) begin
            fwdrs1s[0]<=1;
          end
          if ({2'b11,instouts[19:15]}==erdnum&&stage[6]) begin
            fwdsrs1s[6]<=1;
            if (eld||efadd||efsub||efmul||efsqrt||efdiv||eitof) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[19:15]}==e2rdnum&&stage[5]) begin
            fwdsrs1s[5]<=1;
            if (e2ld||e2fdiv||e2fsqrt||e2fadd||e2fsub||e2fmul) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[19:15]}==e3rdnum&&stage[4]) begin
            fwdsrs1s[4]<=1;
            if (e3ld||e3fdiv||e3fsqrt||e3fadd||e3fsub) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[19:15]}==e4rdnum&&stage[3]) begin
            fwdsrs1s[3]<=1;
            if (e4fdiv||e4fsqrt) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[19:15]}==e5rdnum&&stage[2]) begin
            fwdsrs1s[2]<=1;
            if (e5fdiv||e5fsqrt) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[19:15]}==mrdnum&&stage[1]) begin
            fwdsrs1s[1]<=1;
          end
          if ({2'b11,instouts[19:15]}==wrdnum&&stage[0]) begin
            fwdsrs1s[0]<=1;
          end
        end
        if (instouts[5]&&(instouts[3:2]==2'b00)) begin
          if (~saki) begin
            if (~((instout[4:3]==2'b0&&(instout[6:5]==2'b01||(instout[5]^instout[2])))||(instout[6:5]==2'b10&&(~(instout[31]==1'b1&&instout[28]==1'b0)))||(instout[3:2]==2'b10&&instout[12]) )) begin
              if (instout[11:7]==instouts[24:20]) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b10,instouts[24:20]}==erdnums&&stages[6]) begin
            fwdrs2s[6]<=1;
            if (elds||eftois) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b10,instouts[24:20]}==e2rdnums&&stages[5]) begin
            fwdrs2s[5]<=1;
            if (e2lds) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b10,instouts[24:20]}==e3rdnums&&stages[4]) begin
            fwdrs2s[4]<=1;
            if (e3lds) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b10,instouts[24:20]}==e4rdnums&&stages[3]) begin
            fwdrs2s[3]<=1;
          end 
          if ({2'b10,instouts[24:20]}==e5rdnums&&stages[2]) begin
            fwdrs2s[2]<=1;
          end 
          if ({2'b10,instouts[24:20]}==mrdnums&&stages[1]) begin
            fwdrs2s[1]<=1;
          end 
          if ({2'b10,instouts[24:20]}==wrdnums&&stages[0]) begin
            fwdrs2s[0]<=1;
          end
          if ({2'b10,instouts[24:20]}==erdnum&&stage[6]) begin
            fwdsrs2s[6]<=1;
            if (eld||eftoi) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b10,instouts[24:20]}==e2rdnum&&stage[5]) begin
            fwdsrs2s[5]<=1;
            if (e2ld) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b10,instouts[24:20]}==e3rdnum&&stage[4]) begin
            fwdsrs2s[4]<=1;
            if (e3ld) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b10,instouts[24:20]}==e4rdnum&&stage[3]) begin
            fwdsrs2s[3]<=1;
          end 
          if ({2'b10,instouts[24:20]}==e5rdnum&&stage[2]) begin
            fwdsrs2s[2]<=1;
          end 
          if ({2'b10,instouts[24:20]}==mrdnum&&stage[1]) begin
            fwdsrs2s[1]<=1;
          end 
          if ({2'b10,instouts[24:20]}==wrdnum&&stage[0]) begin
            fwdsrs2s[0]<=1;
          end
        end
        if ((instouts[6:5]==2'b10&&(~instouts[30]))||instouts[6:2]==5'b01001 ) begin
          if (~saki) begin
            if ((instout[6:5]==2'b0&&instout[2]==1'b1)||(instout[6:5]==2'b10&&((~instout[31])||instout[28]))) begin
              if (instout[11:7]==instouts[24:20]) begin
                stops[2]<=1;
                dpcs<=dpcs;
                fpcs<=fpcs;
                f2pcs<=f2pcs;
                fpcbfs<=fpcbfs;
                stages[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[24:20]}==erdnums&&stages[6]) begin
            fwdrs2s[6]<=1;
            if (elds||efadds||efsubs||efmuls||efsqrts||efdivs||eitofs) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[24:20]}==e2rdnums&&stages[5]) begin
            fwdrs2s[5]<=1;
            if (e2lds||e2fdivs||e2fsqrts||e2fadds||e2fsubs||e2fmuls) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[24:20]}==e3rdnums&&stages[4]) begin
            fwdrs2s[4]<=1;
            if (e3lds||e3fdivs||e3fsqrts||e3fadds||e3fsubs) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[24:20]}==e4rdnums&&stages[3]) begin
            fwdrs2s[3]<=1;
            if (e4fdivs||e4fsqrts) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[24:20]}==e5rdnums&&stages[2]) begin
            fwdrs2s[2]<=1;
            if (e5fdivs||e5fsqrts) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[24:20]}==mrdnums&&stages[1]) begin
            fwdrs2s[1]<=1;
          end
          if ({2'b11,instouts[24:20]}==wrdnums&&stages[0]) begin
            fwdrs2s[0]<=1;
          end
          if ({2'b11,instouts[24:20]}==erdnum&&stage[6]) begin
            fwdsrs2s[6]<=1;
            if (eld||efadd||efsub||efmul||efsqrt||efdiv||eitof) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[24:20]}==e2rdnum&&stage[5]) begin
            fwdsrs2s[5]<=1;
            if (e2ld||e2fdiv||e2fsqrt||e2fadd||e2fsub||e2fmul) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[24:20]}==e3rdnum&&stage[4]) begin
            fwdsrs2s[4]<=1;
            if (e3ld||e3fdiv||e3fsqrt||e3fadd||e3fsub) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[24:20]}==e4rdnum&&stage[3]) begin
            fwdsrs2s[3]<=1;
            if (e4fdiv||e4fsqrt) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[24:20]}==e5rdnum&&stage[2]) begin
            fwdsrs2s[2]<=1;
            if (e5fdiv||e5fsqrt) begin
              stops[2]<=1;
              dpcs<=dpcs;
              fpcs<=fpcs;
              f2pcs<=f2pcs;
              fpcbfs<=fpcbfs;
              stages[6]<=0;
              if (saki) begin
                stop[2]<=1;
                dpc<=dpc;
                fpc<=fpc;
                f2pc<=f2pc;
                fpcbf<=fpcbf;
                stage[6]<=0;
              end
            end
          end
          if ({2'b11,instouts[24:20]}==mrdnum&&stage[1]) begin
            fwdsrs2s[1]<=1;
          end
          if ({2'b11,instouts[24:20]}==wrdnum&&stage[0]) begin
            fwdsrs2s[0]<=1;
          end
        end
        if (instouts[1:0]!=2'b11) begin
          progends[0]<=1;
        end else begin
          progends[0]<=0;
        end
      end

      if (stage[6]) begin
        if (progend[0]) begin
          progend[1]<=1;
        end
        e2rdnum<=erdnum;
        e2ld<=eld;
        e2st<=st;
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
        e2itof<=eitof;
        if (ejal) begin
          e2rslt<=rs2wire;
          stage[8:6]<=0;
          stages[8:6]<=0;
          /*fpcbfs<=memaddr_bs[15:2]+14'b10;
          f2pcs<=memaddr_bs[15:2];
          fpcs<=f2pcs;
          fpcbf<=memaddr_b[15:2]+23'b10;
          f2pc<=memaddr_b[15:2];
          fpc<=f2pc;*/
          fpcbf<=enextpc+2;
          fpcbfs<=enextpcs+2;
          f2pc<=enextpc;
          f2pcs<=enextpcs;
          stop[2]<=0;
          stops[2]<=0;
          sakireg<=sakireg;
        end
        if (ejalr) begin
          e2rslt<=rs2wire;
          if (sakireg) begin
            e2nextpc<=rs1wire[15:2]+imm[13:0]+14'b1;
            e2nextpcs<=rs1wire[15:2]+imm[13:0];
          end else begin
            e2nextpc<=rs1wire[15:2]+imm[13:0];
            e2nextpcs<=rs1wire[15:2]+imm[13:0]+1;
          end
          stage[8:6]<=0;
          stages[8:6]<=0;
          /*fpcbfs<=memaddr_bs[15:2]+14'b10;
          f2pcs<=memaddr_bs[15:2];
          fpcs<=f2pcs;
          fpcbf<=memaddr_b[15:2]+14'b10;
          f2pc<=memaddr_b[15:2];
          fpc<=f2pc;*/
          stop[2]<=0;
          stops[2]<=0;
          sakireg<=sakireg;
        end
        if (ebrnc) begin
          if (jumpwire) begin
            stage[8:6]<=0;
            stages[8:6]<=0;
            /*fpcbfs<=memaddr_bs[15:2]+14'b10;
            f2pcs<=memaddr_bs[15:2];
            fpcs<=f2pcs;
            fpcbf<=memaddr_b[15:2]+14'b10;
            f2pc<=memaddr_b[15:2];
            fpc<=f2pc;
            stop[2]<=0;
            stops[2]<=0;
            sakireg<=sakireg;*/
          end
          jumpreg<=jumpwire;
          if (sakireg) begin
            e2nextpc<=epc+imm[13:0]+1;
            e2nextpcs<=epc+imm[13:0];
          end else begin
            e2nextpc<=epc+imm[13:0];
            e2nextpcs<=epc+imm[13:0]+1;
          end
        end
        if (eld||st) begin
          memaddrreg<=rs1wire[20:2]+imm;
          memdatareg<=rs2wire;
        end
        if (st) begin
          stenablereg_a<=1;
        end
        if (opp) begin
          if (opinst[2]) begin
            /*if (opinst[1]) begin
              if (opinst[0]) begin
                e2rslt<=rs1wire&rs2wire;
              end else begin
                e2rslt<=rs1wire|rs2wire;
              end
            end else begin
              if (opinst[0]) begin*/
                if (~is_arith) begin
                  e2rslt<=rs1wire>>(rs2wire[4:0]);
                end else begin
                  e2rslt<=rs1wire>>>(rs2wire[4:0]);
                end
              /*end else begin
                e2rslt<=rs1wire^rs2wire;
              end
            end*/
          end else begin
           /* if (opinst[1]) begin
              if (opinst[0]) begin
                e2rslt<=(rs1wire<rs2wire)?32'b1:32'b0;
              end else begin
                if ((rs1wire[31])^(rs2wire[31])) begin
                  e2rslt<={31'b0,rs1wire[31]};
                end else begin
                  e2rslt<={31'b0,(((rs1wire[30:0])<(rs2wire[30:0]))?(~rs1wire[31]):(rs1wire[31]))};
                end
              end
            end else begin*/
              if (opinst[0]) begin
                e2rslt<=rs1wire<<(rs2wire[4:0]);
              end else begin
                if (~is_arith) begin
                  e2rslt<=rs1wire+rs2wire;
                end else begin
                  e2rslt<=rs1wire-rs2wire;
                end
              end
            //end
          end
        end
        if (einp) begin
          ebrnc<=0;
          opp<=0;
          eld<=0;
          st<=0;
          einp<=einp;
          eoutp<=eoutp;
          finst<=0;
          fopinst<=0;
          efadd<=0;
          efsub<=0;
          efmul<=0;
          efsqrt<=0;
          efdiv<=0;
          ejal<=0;
          ejalr<=0;
          eftoi<=0;
          eitof<=0;
          erdnum<=erdnum;
          epc<=epc;

          dpc<=dpc;
          fpc<=fpc;
          f2pc<=f2pc;
          fpcbf<=fpcbf;
          stop[2]<=1;
          dpcs<=dpcs;
          fpcs<=fpcs;
          f2pcs<=f2pcs;
          fpcbfs<=fpcbfs;
          stops[2]<=1;
          if (io_state==3'b11&&io_rvalid) begin
            stage[7:5]<=3'b101;
            stages[7]<=1;
          end else begin
            epc<=epc;
            stage[7:5]<=3'b010;
            stages[7:6]<=2'b00;
          end
          if (io_state==3'b0) begin
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
              firstin<=1;
            end
          end
          if (io_state==3'b111) begin //aw,w両方まつ
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
          ebrnc<=0;
          opp<=0;
          eld<=0;
          st<=0;
          einp<=einp;
          eoutp<=eoutp;
          finst<=0;
          fopinst<=0;
          efadd<=0;
          efsub<=0;
          efmul<=0;
          efsqrt<=0;
          efdiv<=0;
          ejal<=0;
          ejalr<=0;
          eftoi<=0;
          eitof<=0;
          erdnum<=erdnum;
          epc<=epc;

          dpc<=dpc;
          fpc<=fpc;
          f2pc<=f2pc;
          fpcbf<=fpcbf;
          stop[2]<=1;
          dpcs<=dpcs;
          fpcs<=fpcs;
          f2pcs<=f2pcs;
          fpcbfs<=fpcbfs;
          stops[2]<=1;
          if (~stop[2]) begin
            io_wdata<={24'b0,rs1wire[7:0]};
          end
          if (io_state==3'b101&&io_bvalid) begin
            stage[7:5]<=3'b101;
            stages[7]<=1;
          end else begin
            epc<=epc;
            stage[7:5]<=3'b010;
            stages[7:6]<=2'b00;
          end
          if (io_state==3'b0) begin
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
        if (finst) begin
          if (fopinst[3]) begin //fmv i2f
            e2rslt<=rs1wire;
          end else begin //fsgnj flt feq
            if (fopinst[4]) begin //flt feq
              if (opinst[2]) begin //feq
                e2rslt<={31'b0,rdwirefeq};
              end else begin
                e2rslt<={31'b0,rdwireflt};
              end
            end else begin
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
          end
        end
      end
      if (stage[5]) begin
        e3rdnum<=e2rdnum;
        e3ld<=e2ld;
        e3rslt<=e2rslt;
        if (e2jalr) begin
          stage[8:5]<=0;
          stages[8:5]<=0;
        end
        if (e2brnc) begin
          if (jumpreg) begin
            stage[8:5]<=0;
            stages[8:5]<=0;
          end
        end
        e3fadd<=e2fadd;
        e3fsub<=e2fsub;
        e3fmul<=e2fmul;
        if (e2ftoi) begin //ftoi 2
          e3rslt<=rdwireftoi;
        end
        if (e2itof) begin //itof 2
          e3rslt<=rdwireitof;
        end
        e3fdiv<=e2fdiv;
        e3fsqrt<=e2fsqrt;
        if (memaddrreg==memaddrregs&&e2ld&&e2sts) begin
          if (sakireg2) begin
            e3rfld<=0;
            e3sl<=1;
            //e3rslt<=memdataregs;
          end else begin
            e3rfld<=1;
            e3sl<=0;
          end
        end else begin
          e3rfld<=0;
          e3sl<=0;
        end
      end

      if (stage[4]) begin
        e4rdnum<=e3rdnum;
        e4rslt<=e3rslt;
        mld<=e3ld;
        e4fadd<=e3fadd;
        e4fsub<=e3fsub;
        e4fdiv<=e3fdiv;
        e4fsqrt<=e3fsqrt;
        e4rfld<=e3rfld;
        e4sl<=e3sl;
        if (e3sl) begin
          e4rslt<=memdatareg2s;
        end
        if (e3fmul) begin //fmul 2
          e4rslt<=rdwirefmul;
        end
      end

      if (stage[3]) begin
        e5rdnum<=e4rdnum;
        e5rslt<=e4rslt;
        if (e4fadd) begin
          e5rslt<=rdwirefadd;
        end
        if (e4fsub) begin 
          e5rslt<=rdwirefsub;
        end
        if (mld&&(~e4sl)) begin
          if (e4rfld) begin
            e5rslt<=r_data_as;
          end else begin
            e5rslt<=r_data_a;
          end
        end
        e5fsqrt<=e4fsqrt;
        e5fdiv<=e4fdiv;
      end


      if (stage[2]) begin
        mrdnum<=e5rdnum;
        mrslt<=e5rslt;
        e6fsqrt<=e5fsqrt;
        e6fdiv<=e5fdiv;
      end

      if (stage[1]) begin
        wrdnum<=mrdnum;
        wrslt<=mrslt;
        if (e6fsqrt) begin
          wrslt<=rdwirefsqrt;
        end
        if (e6fdiv) begin
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
      if (progend[1]||progends[1]) begin
        stage<=0;
      end

      if (stages[6]) begin
        if (progends[0]) begin
          progends[1]<=1;
        end
        e2rdnums<=erdnums;
        e2lds<=elds;
        e2sts<=sts;
        e2inps<=einps;
        e2outps<=eoutps;
        e2fadds<=efadds;
        e2fsubs<=efsubs;
        e2fmuls<=efmuls;
        e2fsqrts<=efsqrts;
        e2fdivs<=efdivs;
        e2jalrs<=ejalrs;
        e2brncs<=ebrncs;
        e2ftois<=eftois;
        e2itofs<=eitofs;
        if (ejals) begin
          e2rslts<=rs2wires;
          stage[8:6]<=0;
          stages[8:6]<=0;
          /*fpcbfs<=memaddr_bs[15:2]+14'b10;
          f2pcs<=memaddr_bs[15:2];
          fpcs<=f2pcs;
          fpcbf<=memaddr_b[15:2]+14'b10;
          f2pc<=memaddr_b[15:2];
          fpc<=f2pc;*/
          fpcbf<=enextpc+2;
          fpcbfs<=enextpcs+2;
          f2pc<=enextpc;
          f2pcs<=enextpcs;
          stop[2]<=0;
          stops[2]<=0;
          sakireg<=sakireg;
        end
        if (ejalrs) begin
          e2rslts<=rs2wires;
          if (sakireg) begin
            e2nextpc<=rs1wires[15:2]+imms[13:0]+1;
            e2nextpcs<=rs1wires[15:2]+imms[13:0];
          end else begin
            e2nextpc<=rs1wires[15:2]+imms[13:0];
            e2nextpcs<=rs1wires[15:2]+imms[13:0]+1;
          end
          stage[8:6]<=0;
          stages[8:6]<=0;
          /*fpcbfs<=memaddr_bs[15:2]+14'b10;
          f2pcs<=memaddr_bs[15:2];
          fpcs<=f2pcs;
          fpcbf<=memaddr_b[15:2]+14'b10;
          f2pc<=memaddr_b[15:2];
          fpc<=f2pc;*/
          stop[2]<=0;
          stops[2]<=0;
          sakireg<=sakireg;
        end
        if (ebrncs) begin
          if (jumpwires) begin
            stage[8:6]<=0;
            stages[8:6]<=0;
            /*fpcbfs<=memaddr_bs[15:2]+14'b10;
            f2pcs<=memaddr_bs[15:2];
            fpcs<=f2pcs;
            fpcbf<=memaddr_b[15:2]+14'b10;
            f2pc<=memaddr_b[15:2];
            fpc<=f2pc;
            stop[2]<=0;
            stops[2]<=0;
            sakireg<=sakireg;*/
          end
          jumpregs<=jumpwires;
          if (sakireg) begin
            e2nextpc<=epcs+imms[13:0]+1;
            e2nextpcs<=epcs+imms[13:0];
          end else begin
            e2nextpc<=epcs+imms[13:0];
            e2nextpcs<=epcs+imms[13:0]+1;
          end
        end
        if (elds||sts) begin
          memaddrregs<=rs1wires[20:2]+imms;
          memdataregs<=rs2wires;
        end
        if (sts) begin
          stenablereg_as<=1;
        end
        if (opps) begin
          if (opinsts[2]) begin
            /*if (opinsts[1]) begin
              if (opinsts[0]) begin
                e2rslts<=rs1wires&rs2wires;
              end else begin
                e2rslts<=rs1wires|rs2wires;
              end
            end else begin
              if (opinsts[0]) begin*/
                if (~is_ariths) begin
                  e2rslts<=rs1wires>>(rs2wires[4:0]);
                end else begin
                  e2rslts<=rs1wires>>>(rs2wires[4:0]);
                end
              /*end else begin
                e2rslts<=rs1wires^rs2wires;
              end
            end*/
          end else begin
            /*if (opinsts[1]) begin
              if (opinsts[0]) begin
                e2rslts<=(rs1wires<rs2wires)?32'b1:32'b0;
              end else begin
                if ((rs1wires[31])^(rs2wires[31])) begin
                  e2rslts<={31'b0,rs1wires[31]};
                end else begin
                  e2rslts<={31'b0,(((rs1wires[30:0])<(rs2wires[30:0]))?(~rs1wires[31]):(rs1wires[31]))};
                end
              end
            end else begin*/
              if (opinsts[0]) begin
                e2rslts<=rs1wires<<(rs2wires[4:0]);
              end else begin
                if (~is_ariths) begin
                  e2rslts<=rs1wires+rs2wires;
                end else begin
                  e2rslts<=rs1wires-rs2wires;
                end
              end
            //end
          end
        end
        if (einps) begin
          ebrncs<=0;
          opps<=0;
          elds<=0;
          sts<=0;
          einps<=einps;
          eoutps<=eoutps;
          finsts<=0;
          fopinsts<=0;
          efadds<=0;
          efsubs<=0;
          efmuls<=0;
          efsqrts<=0;
          efdivs<=0;
          ejals<=0;
          ejalrs<=0;
          eftois<=0;
          eitofs<=0;
          erdnums<=erdnums;
          epcs<=epcs;

          dpc<=dpc;
          fpc<=fpc;
          f2pc<=f2pc;
          fpcbf<=fpcbf;
          stop[2]<=1;
          dpcs<=dpcs;
          fpcs<=fpcs;
          f2pcs<=f2pcs;
          fpcbfs<=fpcbfs;
          stops[2]<=1;
          if (io_state==3'b11&&io_rvalid) begin
            stage[7]<=1;
            stages[7:5]<=3'b101;
          end else begin
            epcs<=epcs;
            stage[7:6]<=2'b0;
            stages[7:5]<=3'b010;
          end
          if (io_state==3'b0) begin
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
            if (io_arready) begin
              io_arvalid<=0;
              io_state<=3'b11;
            end
          end
          if (io_state==3'b11) begin
            if (io_rvalid) begin
              io_rready<=1;//state4でこれをおろす
              e2rslts<={mainreg[erdnums[4:0]][31:8],io_rdata[7:0]};
              einps<=0;
              firstin<=1;
            end
          end
          if (io_state==3'b111) begin //aw,w両方まつ
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
        if (eoutps) begin
          ebrncs<=0;
          opps<=0;
          elds<=0;
          sts<=0;
          einps<=einps;
          eoutps<=eoutps;
          finsts<=0;
          fopinsts<=0;
          efadds<=0;
          efsubs<=0;
          efmuls<=0;
          efsqrts<=0;
          efdivs<=0;
          ejals<=0;
          ejalrs<=0;
          eftois<=0;
          eitofs<=0;
          erdnums<=erdnums;
          epcs<=epcs;

          dpc<=dpc;
          fpc<=fpc;
          f2pc<=f2pc;
          fpcbf<=fpcbf;
          stop[2]<=1;
          dpcs<=dpcs;
          fpcs<=fpcs;
          f2pcs<=f2pcs;
          fpcbfs<=fpcbfs;
          stops[2]<=1;
          if (~stops[2]) begin
            io_wdata<={24'b0,rs1wires[7:0]};
          end
          if (io_state==3'b101&&io_bvalid) begin
            stage[7]<=1;
            stages[7:5]<=3'b101;
          end else begin
            epcs<=epcs;
            stage[7:6]<=2'b00;
            stages[7:5]<=3'b010;
          end
          if (io_state==3'b0) begin
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
              eoutps<=0;
            end
          end
        end
        if (finsts) begin
          if (fopinsts[3]) begin //fmv i2f
            e2rslts<=rs1wires;
          end else begin //fsgnj flt feq
            if (fopinsts[4]) begin //flt feq
              if (opinsts[2]) begin //feq
                e2rslts<={31'b0,rdwirefeqs};
              end else begin
                e2rslts<={31'b0,rdwireflts};
              end
            end else begin
              if (opinsts[2]) begin //xor
                e2rslts<={(rs2wires[31] ^ rs1wires[31]),rs1wires[30:0]};
              end
              if (opinsts[1]) begin //n
                e2rslts<={(~rs2wires[31]),rs1wires[30:0]};
              end
              if (opinsts[0]) begin
                e2rslts<={rs2wires[31],rs1wires[30:0]};
              end
            end
          end
        end
      end
      if (stages[5]) begin
        e3rdnums<=e2rdnums;
        e3lds<=e2lds;
        e3rslts<=e2rslts;
        if (e2jalrs) begin
          stage[8:5]<=0;
          stages[8:5]<=0;
        end
        if (e2brncs) begin
          if (jumpregs) begin
            stage[8:5]<=0;
            stages[8:5]<=0;
          end
        end
        e3fadds<=e2fadds;
        e3fsubs<=e2fsubs;
        e3fmuls<=e2fmuls;
        if (e2ftois) begin //ftoi 2
          e3rslts<=rdwireftois;
        end
        if (e2itofs) begin //itof 2
          e3rslts<=rdwireitofs;
        end
        e3fdivs<=e2fdivs;
        e3fsqrts<=e2fsqrts;
        if (memaddrreg==memaddrregs&&e2lds&&e2st) begin
          if (sakireg2) begin
            e3rflds<=1;
            e3sls<=0;
          end else begin
            e3rflds<=0;
            e3sls<=1;
            //e3rslts<=memdatareg;
          end
        end else begin
          e3rflds<=0;
          e3sls<=0;
        end
      end

      if (stages[4]) begin
        e4rdnums<=e3rdnums;
        e4rslts<=e3rslts;
        mlds<=e3lds;
        e4fadds<=e3fadds;
        e4fsubs<=e3fsubs;
        e4fdivs<=e3fdivs;
        e4fsqrts<=e3fsqrts;
        if (e3fmuls) begin //fmul 2
          e4rslts<=rdwirefmuls;
        end
        e4rflds<=e3rflds;
        e4sls<=e3sls;
        if (e3sls) begin
          e4rslts<=memdatareg2;
        end
      end

      if (stages[3]) begin
        e5rdnums<=e4rdnums;
        e5rslts<=e4rslts;
        if (e4fadds) begin
          e5rslts<=rdwirefadds;
        end
        if (e4fsubs) begin 
          e5rslts<=rdwirefsubs;
        end
        if (mlds&&(~e4sls)) begin
          if (e4rflds) begin
            e5rslts<=r_data_a;
          end else begin
            e5rslts<=r_data_as;
          end
        end
        e5fsqrts<=e4fsqrts;
        e5fdivs<=e4fdivs;
      end


      if (stages[2]) begin
        mrdnums<=e5rdnums;
        mrslts<=e5rslts;
        e6fsqrts<=e5fsqrts;
        e6fdivs<=e5fdivs;
      end

      if (stages[1]) begin
        wrdnums<=mrdnums;
        wrslts<=mrslts;
        if (e6fsqrts) begin
          wrslts<=rdwirefsqrts;
        end
        if (e6fdivs) begin
          wrslts<=rdwirefdivs;
        end
      end

      if (stages[0]) begin
        if (wrdnums[6]) begin
          if (wrdnums[5]) begin //float
            mainfreg[wrdnums[4:0]]<=wrslts;
            w2rslts<=wrslts;
          end else begin
            mainreg[wrdnums[4:0]]<=wrslts;
            w2rslts<=wrslts;
          end
        end
        mainreg[0]<=0;
      end
      if (progend[1]||progends[1]) begin
        stages<=0;
      end
    end
  end

endmodule

`default_nettype wire
