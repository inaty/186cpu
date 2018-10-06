`default_nettype none

module uart_rx #(CLK_PER_HALF_BIT = 5208) (
               output logic [7:0] rdata,
               output logic       rdata_ready,
               output logic       ferr,
               input wire         rxd,
               input wire         clk,
               input wire         rst);
   
   localparam e_clk_bit = CLK_PER_HALF_BIT * 2 - 1;
   localparam h_clk_bit = CLK_PER_HALF_BIT - 1;
   
   logic [3:0]                  status;
   logic [31:0]                 counter;
   //logic                        fin_stop_bit;
   //logic                        rst_ctr;

   (* ASYNG_REG = "true" *) reg [2:0] sync_reg;
   reg [2:0] 			chat_reg;
   reg [7:0] 			oreg;
   
   
   
   
   always @(posedge clk) begin
      if (rst) begin
	 counter<=0;
	 chat_reg<=3'b111;
	 sync_reg<=3'b111;
	 status<=0;
	 rdata_ready<=0;
	 ferr<=0;
	 oreg<=0;
      end else begin
         sync_reg[0]<=rxd;
         sync_reg[1]<=sync_reg[0];
         sync_reg[2]<=sync_reg[1];
         chat_reg[0]<=sync_reg[2];
         chat_reg[1]<=chat_reg[0];
         chat_reg[2]<=chat_reg[1];
         if ((|chat_reg==0)&(status==0)) begin
	    counter<=0;
	    rdata_ready<=0;
	    status<=4'b0001;
         end else begin
	    if ((status==4'b0001)&(counter==h_clk_bit)) begin
	       status<=4'b1000;
	       counter<=0;
	    end else if ((status[3]==1)&(counter==e_clk_bit)) begin 
	       counter<=0;
	       oreg[status[2:0]]<=sync_reg[2];
	       if (status==4'b1111) begin
		  status<=4'b0010;
	       end else begin
		  status<=status+1;
	       end
	    end else if ((status==4'b0010)&(counter==e_clk_bit)) begin
	       if (sync_reg[2]==0) begin
		  ferr<=1;
	       end else begin
		  ferr<=0;
	       end
	       status<=4'b0011;
	       rdata<=oreg;
	       counter<=0;
	    end else if ((status==4'b0011)&(counter==h_clk_bit-4)) begin
	       status<=4'b0000;
	       rdata_ready<=1;
	       //rdata<=oreg;
	       counter<=0;
	    end else begin
	       rdata_ready<=0;
	       counter<=counter+1;
	    end
	 end // else: !if((|chat_reg==0)&(status==0))
      end // else: !if(~rstn)
   end // always @ (posedge clk)
   
   
endmodule
`default_nettype wire
