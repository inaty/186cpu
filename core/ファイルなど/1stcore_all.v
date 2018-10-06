`timescale 1ns / 100ps
`default_nettype none

module f_core_all
  (output wire clk,
   output wire rst,
   output wire trs);
  reg [7:0] c=8'b00000000;
  reg rstreg=1;
  reg clkreg=0;
  parameter P=100;
  assign rst=rstreg;
  assign clk=clkreg;
  
  reg [7:0] tdata;
  wire [7:0] tdata_wire;
  wire tx_start;
  wire tx_busy;
  reg txs;
  assign tdata_wire=tdata;
  assign tx_start=txs;
  f_core #(32,1024,8) fc(clk,rst);
  uart_tx #(400) uart_tx(tdata_wire,tx_start,tx_busy,trs,clk,rst);

  always @(posedge clk) begin
    txs<=0;
    if (c!=8'b11111111) begin
      c<=c+1;
    end
    if (c<8'b00010000) begin
      rstreg<=0;
      tdata<=8'b01010101;
      txs<=0;
    end
    if (c==8'b00010100) begin
      txs<=1;
    end
  end

  always #(P/2) begin
    clkreg<= ~clkreg;
  end

endmodule


`default_nettype wire
