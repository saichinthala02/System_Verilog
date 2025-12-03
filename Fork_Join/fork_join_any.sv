//--> Fork-Join
module top;
	initial begin
		$display("%0t ---> Entry-1",$time);  //0
		#2;
		#2 $display("%0t ---> Entry-2",$time); //4
		fork 
			begin
				$display("%0t ---> Entry-3",$time);  //4
				#2;$display("%0t ---> Entry-4",$time); //6
				#10 $display("%0t ---> Entry-5",$time); //16
			end

			begin
				#1;$display("%0t ---> Entry-6",$time); //5
				$display("%0t ---> Entry-7",$time); //5
			end

			begin
				#5;#10 $display("%0t ---> Entry-8",$time); //19
				#22;$display("%0t ---> Entry-9",$time); //41
			end
		join_any 
		$display("%0t ---> Entry-10",$time); //4
		#2;
		#2 $display("%0t ---> Entry-11",$time); //8
		#12 $display("%0t ---> Entry-11",$time); //20
		#1; $display("%0t ---> Entry-11",$time); //21
	end
endmodule

/* Output:

*/
