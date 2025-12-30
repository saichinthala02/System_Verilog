module top;
	reg clk,ready,valid;
	always #5 clk=~clk;
	initial begin
		clk=0;
		valid=0;
		ready=0;
		#20 valid=1;
		#70 ready=1;
	end
	initial begin
		#500;
		$finish;
	end
	property handshak;
		@(posedge clk) (valid==1)|->##[0:4](ready==1);
	endproperty
	assert property(handshak);
endmodule
