module top;
	reg clk;
	real tp,jitter,j_tp;
	initial begin
		clk=0;
		jitter=3;
		tp=10;
		forever begin
			j_tp=tp*($urandom_range(100-jitter,100+jitter))/100.0;
			clk=~clk;
			#(j_tp/2);
		end
	end
	initial begin
		#200;
		$finish;
	end
	property jitter_check;
		real prev_time,time_prd,j;
		@(posedge clk) (1,prev_time=$realtime,time_prd=10,j=3)|=>($realtime-prev_time inside {[time_prd*((100-j)/100.0):time_prd*((100+j)/100.0)]});
	endproperty
	assert property(jitter_check);
endmodule
