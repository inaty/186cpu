`timescale 1ns / 1ps
`default_nettype none

module ftoi_d(
  input wire [31:0] x,
  input wire rmwire,
  output wire [31:0] y,
  input wire clk);

  wire [0:0] swire;
  wire [7:0] ewire;
  wire [22:0] m;

  assign swire = x[31];
  assign ewire = x[30:23];
  assign m = x[22:0];
  
  wire [7:0]  d;
  wire [31:0] i;
  wire [30:0] roundwire;
  wire [30:0] ir;
  wire [31:0] roundm;//core
  
  assign d = (ewire >= 8'd127 && ewire < 8'd158) ? 8'd158 - ewire : 8'b0; // ずらす桁  >127 -> >=127 core
  assign roundm = (rmwire == 0 || swire == 0) ? {1'b1,m,8'b0} : ({1'b1,m,8'b0}-32'b1);
  assign i =  roundm >> d ;  //core 
  assign roundwire = i[30:0];

  reg [30:0] round;
  reg rm;
  reg s;
  reg [7:0] e;

 
  assign ir = (s == 0) ? round : ((rm==0) ? (~round) + 1 : (~round)); // bit反転(補数)
  
  assign y = (e < 8'd127) ? ((rm == 0 || s == 0 ) ? 32'b0 : 32'hffffffff) : //指数部が0以下
             ((e >= 8'd158) ? ((s==0) ? 32'h7fffffff : 32'h80000000) : //inf
             (((ir==0)&&(s==1))?32'h00000000:{s,ir}) // その他
             );


  always @(posedge clk) begin
    round<=roundwire;
    rm<=rmwire;
    s<=swire;
    e<=ewire;
  end
endmodule

`default_nettype wire


