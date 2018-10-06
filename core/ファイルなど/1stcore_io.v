`default_nettype none

module io
  #(CLK_PER_HALF_BIT=400)
  (input wire clk,
   input wire rst,
   input wire rxd,
   output wire txd,
   output wire [31:0] indina,
   output wire [31:0] inaddra,
   output wire [31:0] inaddrb,
   output wire enio,
   output wire [3:0] inwe,
   output wire [31:0] outaddra,
   output wire [31:0] outaddrb,
   input wire [31:0] outdoutb,
   output wire [3:0] zerowe,
   input wire coreread,
   output wire corereadok,
   input wire corewrite,
   output wire corewriteok,
   output wire [1:0] corereadwhere,
   output wire [1:0] corewritewhere);

  assign enio=1'b1;
  assign zerowe=4'b0;

  reg [14:0] incount;
  reg [14:0] outcount;

  reg [14:0] inmemareg;
  reg [14:0] outmembreg;
  reg [14:0] inmembreg;
  reg [14:0] outmemareg;


  wire [7:0] receivedata;
  wire ferr;
  wire rx_ready;
  reg [7:0] indina_reg;
  reg [3:0] inwe_reg;
  reg rx_valid;
  reg tx_start_reg;
  wire tx_busy;
  wire tx_start;
  wire [7:0] senddata_wire;
  reg [7:0] senddata;


  uart_tx #(CLK_PER_HALF_BIT) u1(senddata_wire,tx_start,tx_busy,txd,clk,rst);
  uart_rx #(CLK_PER_HALF_BIT) u2(receivedata,rx_ready,ferr,rxd,clk,rst);
  

  assign indina={indina_reg,indina_reg,indina_reg,indina_reg};
  assign inwe=inwe_reg;
  assign inaddra={19'b0,inmemareg[14:2]};
  assign inaddrb={19'b0,inmembreg[14:2]};
  assign corereadwhere=inmemareg[1:0];
  assign corereadok=(incount==15'b0|coreread)?0:1;
  assign corewritewhere=outmemareg[1:0];
  assign corewriteok=(outcount[14:1]==14'h3fff)?0:1;
  assign tx_start=tx_start_reg;
  assign senddata_wire=senddata;
  assign outaddra={19'b0,outmemareg[14:2]};
  assign outaddrb={19'b0,outmembreg[14:2]};
  assign corewritewhere=outmemareg[1:0];

  always @(posedge clk) begin
    if (rst) begin
      incount<=0;
      outcount<=0;
      inmemareg<=0;
      inmembreg<=0;
      outmemareg<=0;
      outmembreg<=0;
      indina_reg<=0;
      inwe_reg<=0;
      rx_valid<=0;
      tx_start_reg<=0;
      senddata<=0;

    end else begin
      if (rx_ready)begin
        indina_reg<=receivedata;
        if (inmemareg[1]) begin
          if (inmemareg[0]) begin
            inwe_reg<=4'b1000;
          end else begin
            inwe_reg<=4'b0100;
          end
        end else begin
          if (inmemareg[0]) begin
            inwe_reg<=4'b0010;
          end else begin
            inwe_reg<=4'b0001;
          end
        end
        rx_valid<=1;
      end
      if (rx_valid) begin
        rx_valid<=0;
        inmemareg<=inmemareg+1;
        incount<=incount+1;
      end
      if (coreread) begin
        incount<=incount+15'h7fff;
        inmembreg<=inmembreg+1;
      end
      if (rx_valid&coreread) begin
        incount<=incount;
      end

      if (~tx_busy&(outcount!=15'b0)) begin
        if (outmembreg[1]) begin
          if (outmembreg[0]) begin
            senddata<=outdoutb[31:24];
          end else begin
            senddata<=outdoutb[23:16];
          end
        end else begin
          if (outmembreg[0]) begin
            senddata<=outdoutb[15:8];
          end else begin
            senddata<=outdoutb[7:0];
          end
        end
        tx_start_reg<=1;
      end
      if (tx_start_reg) begin
        tx_start_reg<=0;
        outcount<=outcount+15'h7fff;
        outmembreg<=outmembreg+1;
      end
      if (corewrite) begin
        outcount<=outcount+1;
        outmemareg<=outmemareg+1;
      end
      if (corewrite&tx_start_reg) begin
        outcount<=outcount;
      end
    end
  end
endmodule


`default_nettype wire  









        
