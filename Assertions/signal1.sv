module top;
	reg clk,a,b;
	always #5 clk=~clk;
	initial begin
		clk=0;
		a=0;
		b=0;
		#10 a=1;
		#50 b=1;
		#500;
		$finish;
	end
	sequence sample;
		a[=4] ##[0:$] (a==1 && b==1);
	endsequence

	property sig;
		@(posedge clk) sample;
	endproperty
	assert property(sig);
endmodule
