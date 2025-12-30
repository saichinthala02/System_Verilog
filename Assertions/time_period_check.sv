module top;
	reg clk;
	always #5 clk=~clk;
	initial begin
		clk=0;
		#200;
		$finish;
	end
	property tp_check;
		real prev_time,tp;
		@(posedge clk) (1,prev_time=$realtime,tp=10) |=> ($realtime-prev_time==tp);
	endproperty
	assert property(tp_check);
endmodule
