`timescale 1ns / 1ps
`default_nettype none

module fmul_myd4(
  input wire [31:0] x1wire,
  input wire [31:0] x2wire,
  output wire [31:0] y,
  output wire ovf,
  input wire clk);


  wire [0:0] s1wire;
  wire [7:0] e1wire;
  wire [22:0] m1wire;
  wire [0:0] s2wire;
  wire [7:0] e2wire;
  wire [22:0] m2wire;

  assign s1wire = x1wire[31];
  assign e1wire = x1wire[30:23];
  assign m1wire = x1wire[22:0];
  assign s2wire = x2wire[31];
  assign e2wire = x2wire[30:23];
  assign m2wire = x2wire[22:0];

  //wire [23:0] m1a;
  //wire [23:0] m2a;

  //assign m1a = e1wire==8'b0 ? {1'b0,m1wire[22:0]} : {1'b1,m1wire[22:0]};
  //assign m2a = e2wire==8'b0 ? {1'b0,m2wire[22:0]} : {1'b1,m2wire[22:0]};
  

  wire [35:0] mydsubwire;
  wire [35:0] mydsubwire2;
  wire [35:0] mydsubwire3;
  wire [35:0] mydsubwire4;
  wire [35:0] mydsubwire5;

  reg hi1reg2;
  reg hi2reg2;

  assign mydsubwire =  {1'b0,m1wire}*(m2wire[11:0]);
  assign mydsubwire2 =  {1'b0,m1wire}*{1'b1,m2wire[22:12]};
  assign mydsubwire3 =  {1'b1,m1wire}*(m2wire[11:0]);
  assign mydsubwire4 =  {1'b1,m1wire}*{1'b0,m2wire[22:12]};
  assign mydsubwire5 =  {1'b1,m1wire}*{1'b1,m2wire[22:12]};
 
  wire [0:0] s1;
  wire [7:0] e1;
  wire [22:0] m1;
  wire [0:0] s2;
  wire [7:0] e2;
  wire [22:0] m2;
  
  reg [0:0] s1reg;
  reg [7:0] e1reg;
  reg [22:0] m1reg;
  reg [0:0] s2reg;
  reg [7:0] e2reg;
  reg [22:0] m2reg;

  assign s1=s1reg;
  assign e1=e1reg;
  assign m1=m1reg;
  assign s2=s2reg;
  assign e2=e2reg;
  assign m2=m2reg;

  reg [35:0] mydsubreg1;
  reg [35:0] mydsubreg2;
  reg [35:0] mydsubreg3;
  reg [35:0] mydsubreg4;
  reg [35:0] mydsubreg5;



////////////

  wire [0:0] sswire;
  
  assign sswire = s1 ^ s2;
  

  wire [9:0] eamydcwire;
  assign eamydcwire=e1+e2-128;
  wire [9:0] eamywire;
  assign eamywire=e1+e2-127;//46 1
  wire [9:0] eamyswire;
  assign eamyswire=e1+e2-126;//47 1
  wire [9:0] eamysswire;
  assign eamysswire=e1+e2-125;
  wire hi1wire;
  wire hi2wire;
  assign hi1wire=e1==8'b0 ? 1 : 0;
  assign hi2wire=e2==8'b0 ? 1 : 0;

  wire zerowire;
  assign zerowire=({e1,m1}==0||{e2,m2}==0)?1:0;

  wire [4:0] m1dwire;
  wire [4:0] m2dwire;
  assign m1dwire = (m1[22] == 0) ? ((m1[21] == 0) ? ((m1[20] == 0) ? ((m1[19] == 0) ? ((m1[18] == 0) ? ((m1[17] == 0) ? ((m1[16] == 0) ? ((m1[15] == 0) ? ((m1[14] == 0) ? ((m1[13] == 0) ? ((m1[12] == 0) ? ((m1[11] == 0) ? ((m1[10] == 0) ? ((m1[9] == 0) ? ((m1[8] == 0) ? ((m1[7] == 0) ? ((m1[6] == 0) ? ((m1[5] == 0) ? ((m1[4] == 0) ? ((m1[3] == 0) ? ((m1[2] == 0) ? ((m1[1] == 0) ? ((m1[0] == 0) ? 24 : 23) : 22) : 21) : 20) : 19) : 18) : 17) : 16) : 15) : 14) : 13) : 12) : 11) : 10) : 9) : 8) : 7) : 6) : 5) : 4) : 3) : 2) : 1;
  assign m2dwire = (m2[22] == 0) ? ((m2[21] == 0) ? ((m2[20] == 0) ? ((m2[19] == 0) ? ((m2[18] == 0) ? ((m2[17] == 0) ? ((m2[16] == 0) ? ((m2[15] == 0) ? ((m2[14] == 0) ? ((m2[13] == 0) ? ((m2[12] == 0) ? ((m2[11] == 0) ? ((m2[10] == 0) ? ((m2[9] == 0) ? ((m2[8] == 0) ? ((m2[7] == 0) ? ((m2[6] == 0) ? ((m2[5] == 0) ? ((m2[4] == 0) ? ((m2[3] == 0) ? ((m2[2] == 0) ? ((m2[1] == 0) ? ((m2[0] == 0) ? 24 : 23) : 22) : 21) : 20) : 19) : 18) : 17) : 16) : 15) : 14) : 13) : 12) : 11) : 10) : 9) : 8) : 7) : 6) : 5) : 4) : 3) : 2) : 1;
  /*wire [4:0] m1dswire;
  wire [4:0] m2dswire;
  assign m1dswire = (m1[22] == 0) ? ((m1[21] == 0) ? ((m1[20] == 0) ? ((m1[19] == 0) ? ((m1[18] == 0) ? ((m1[17] == 0) ? ((m1[16] == 0) ? ((m1[15] == 0) ? ((m1[14] == 0) ? ((m1[13] == 0) ? ((m1[12] == 0) ? ((m1[11] == 0) ? ((m1[10] == 0) ? ((m1[9] == 0) ? ((m1[8] == 0) ? ((m1[7] == 0) ? ((m1[6] == 0) ? ((m1[5] == 0) ? ((m1[4] == 0) ? ((m1[3] == 0) ? ((m1[2] == 0) ? ((m1[1] == 0) ? ((m1[0] == 0) ? 23 : 22) : 21) : 20) : 19) : 18) : 17) : 16) : 15) : 14) : 13) : 12) : 11) : 10) : 9) : 8) : 7) : 6) : 5) : 4) : 3) : 2) : 1) : 0;
  assign m2dswire = (m2[22] == 0) ? ((m2[21] == 0) ? ((m2[20] == 0) ? ((m2[19] == 0) ? ((m2[18] == 0) ? ((m2[17] == 0) ? ((m2[16] == 0) ? ((m2[15] == 0) ? ((m2[14] == 0) ? ((m2[13] == 0) ? ((m2[12] == 0) ? ((m2[11] == 0) ? ((m2[10] == 0) ? ((m2[9] == 0) ? ((m2[8] == 0) ? ((m2[7] == 0) ? ((m2[6] == 0) ? ((m2[5] == 0) ? ((m2[4] == 0) ? ((m2[3] == 0) ? ((m2[2] == 0) ? ((m2[1] == 0) ? ((m2[0] == 0) ? 23 : 22) : 21) : 20) : 19) : 18) : 17) : 16) : 15) : 14) : 13) : 12) : 11) : 10) : 9) : 8) : 7) : 6) : 5) : 4) : 3) : 2) : 1) : 0;
*/


/////////

  reg ssreg;
  reg [9:0] eamydcreg;
  reg [9:0] eamyreg;
  reg [9:0] eamysreg;
  reg [9:0] eamyssreg;
  reg hi1reg;
  reg hi2reg;
  reg [4:0] m1dreg;
  reg [4:0] m2dreg;
  reg [47:0] mydreg;
  reg zeroreg;
  //reg [4:0] m1dswire;
  //reg [4:0] m2dswire;
  wire ss;
  wire [9:0] eamydc;
  wire [9:0] eamy;
  wire [9:0] eamys;
  wire [9:0] eamyss;
  wire hi1;
  wire hi2;
  wire [4:0] m1d;
  wire [4:0] m2d;
  wire [47:0] myd;
  wire zero;
 
  assign ss=ssreg;
  assign eamydc=eamydcreg;
  assign eamy=eamyreg;
  assign eamys=eamysreg;
  assign eamyss=eamyssreg;
  assign hi1=hi1reg;
  assign hi2=hi2reg;
  assign m1d=m1dreg;
  assign m2d=m2dreg;
  assign myd=mydreg;
  assign zero=zeroreg;

  wire [8:0] e2m1;
  wire [8:0] e1m2;
  assign e2m1=eamys[8:0]-{4'b0,m1d};
  assign e1m2=eamys[8:0]-{4'b0,m2d};
  wire [8:0] e2m1d;
  wire [8:0] e1m2d;
  assign e2m1d=eamydc[8:0]-{4'b0,m1d};
  assign e1m2d=eamydc[8:0]-{4'b0,m2d};
  wire [8:0] e2m1ss;
  wire [8:0] e1m2ss;
  assign e2m1ss=eamyss[8:0]-{4'b0,m1d};
  assign e1m2ss=eamyss[8:0]-{4'b0,m2d};


  wire [47:0] sldl;
  assign sldl=myd<<(hi1?m1d:m2d);
  wire [47:0] sldlr;
  assign sldlr=sldl>>(hi1?(~e2m1d[4:0]):(~e1m2d[4:0]));
  wire [47:0] sldr;
  assign sldr=myd>>(~(eamydc[4:0]));


  wire [7:0] eans;
  assign eans=hi1?(hi2?0:(((~e1m2[8])&&(~eamys[9]))?(sldl[47]?e1m2ss[7:0]:e1m2[7:0]):0)):(hi2?(((~e2m1[8])&&(~eamys[9]))?(sldl[47]?e2m1ss[7:0]:e2m1[7:0]):0):(myd[47]?(eamys[9]?0:(eamys[8]?8'hff:eamys[7:0])):(eamy[9]?0:(eamy[8]?8'hff:eamy[7:0]))));


  wire [22:0] mans;
  assign mans=hi1?(hi2?23'b0:(((~e1m2[8])&&(~eamys[9]))?(sldl[47]?sldl[46:24]:((e1m2[7:0]==0)?sldl[46:24]:sldl[45:23])):((|(~e1m2d[7:5]))?23'b0:sldlr[45:23]))):
                  (hi2?(((~e2m1[8])&&(~eamys[9]))?(sldl[47]?sldl[46:24]:((e2m1[7:0]==0)?sldl[46:24]:sldl[45:23])):((|(~e2m1d[7:5]))?23'b0:sldlr[45:23])):
                    (myd[47]?(eamy[9]?sldr[46:24]:myd[46:24]):(eamydc[9]?sldr[47:25]:myd[45:23])));
  
  assign y={ss,(zero?8'b0:eans),mans};


  
  always @(posedge clk) begin
    s1reg<=s1wire;
    e1reg<=e1wire;
    m1reg<=m1wire;
    s2reg<=s2wire;
    e2reg<=e2wire;
    m2reg<=m2wire;
    mydsubreg1<=mydsubwire;
    mydsubreg2<=mydsubwire2;
    mydsubreg3<=mydsubwire3;
    mydsubreg4<=mydsubwire4;
    mydsubreg5<=mydsubwire5;

    //mydreg<={(mydsubreg2+{12'b0,mydsubreg1[35:12]}),mydsubreg1[11:0]};
    hi1reg2<=(x1wire[30:23]==8'b0)?1:0;
    hi2reg2<=(x2wire[30:23]==8'b0)?1:0;

    if (hi1reg2) begin
      if (hi2reg2) begin
        mydreg<=48'b0;
      end else begin
        mydreg<={(mydsubreg2+{12'b0,mydsubreg1[35:12]}),mydsubreg1[11:0]};
      end
    end else begin
      if (hi2reg2) begin
        mydreg<={(mydsubreg4+{12'b0,mydsubreg3[35:12]}),mydsubreg3[11:0]};
      end else begin
        mydreg<={(mydsubreg5+{12'b0,mydsubreg3[35:12]}),mydsubreg3[11:0]};
      end
    end


    ssreg<=sswire;
    //mydreg<=mydwire;
    eamydcreg<=eamydcwire;
    eamyreg<=eamywire;
    eamysreg<=eamyswire;
    eamyssreg<=eamysswire;
    hi1reg<=hi1reg2;
    hi2reg<=hi2reg2;
    m1dreg<=m1dwire;
    m2dreg<=m2dwire;
    zeroreg<=zerowire;
    //m1ds<=m1dswire;
    //m2ds<=m2dswire;

  end
endmodule
`default_nettype wire


