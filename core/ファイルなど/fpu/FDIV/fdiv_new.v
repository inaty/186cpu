`timescale 1ns / 1ps
`default_nettype none

module fdiv_d(
  input wire [31:0] x1wire,
  input wire [31:0] x2,
  output wire [31:0] y,
  output wire ovf,
  input wire clk);
  

  
  wire [31:0] x2iwire;

  finv_d u1(x2,x2iwire,clk);

  reg [31:0] x2ireg;
  reg [31:0] x1reg;
  reg [31:0] x1reg2;
  reg [31:0] x1reg3;
  wire [31:0] x2i;
  wire [31:0] x1;
  assign x2i=x2ireg;
  assign x1=x1reg3;
  
  wire [0:0] s2i;
  wire [7:0] e2i;
  wire [22:0] m2i;
  
  assign s2i = x2i[31];
  assign e2i = x2i[30:23];
  assign m2i = x2i[22:0];
  
  wire [31:0] ans;
  wire o;
  
  fmul_myd u2(x1,x2i,ans,o,clk);
  
  assign ovf = o;
  assign y = ans;


  always @(posedge clk) begin
    x1reg<=x1wire;
    x1reg2<=x1reg;
    x1reg3<=x1reg2;
    x2ireg<=x2iwire;
  end

endmodule
`default_nettype wire


