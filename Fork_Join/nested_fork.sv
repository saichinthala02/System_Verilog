module top;
	initial begin
		$display("%0t ---> Entry-1",$time);	
		fork
			#1 $display("%0t ---> Entry-2",$time);
					begin
				fork
					#10 $display("%0t ---> Entry-4",$time);
					#3;
					$display("%0t ---> Entry-5",$time);
				join
			end
			begin
				fork
			    	#5;#1 $display("%0t ---> Entry-3",$time);
			    	#15 $display("%0t ---> Entry-7",$time);

				join_any
			end

		join
		$display("%0t ---> Entry-6",$time);//10
	end
endmodule
