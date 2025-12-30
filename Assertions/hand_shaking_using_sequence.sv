//--> Write an assertion whenever res is low and valid is high, within 5 clock cycles ready is happened or not.  
module top;
	reg clk,rst,valid,ready;
	always #5 clk=~clk;
	initial begin
		clk=0;
		rst=1;
		valid=0;
		ready=0;
		repeat(2)@(posedge clk);
		rst=0;
		#20; valid=1;
		#70; ready=1;
		#100;
		$finish;
	end
	sequence res_valid;
		(rst==0) ##0 (valid==1);
	endsequence
	sequence valid_ready;
		(valid==1) ##[0:4] (ready==1);
	endsequence
	sequence final_seq;
		(rst==0) ##0 valid_ready;
	endsequence
	property handshaking;
		@(posedge clk) (rst==0) |-> final_seq;
	endproperty
	assert property(handshaking);
endmodule
