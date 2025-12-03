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
		join_none 
		$display("%0t ---> Entry-10",$time); //4
		#2;
		#2 $display("%0t ---> Entry-11",$time); //8
		#12 $display("%0t ---> Entry-12",$time); //20
		#1; $display("%0t ---> Entry-13",$time); //21
	end
endmodule

/* Output:
# 0 ---> Entry-1
# 4 ---> Entry-2
# 4 ---> Entry-10
# 4 ---> Entry-3
# 5 ---> Entry-6
# 5 ---> Entry-7
# 6 ---> Entry-4
# 8 ---> Entry-11
# 16 ---> Entry-5
# 19 ---> Entry-8
# 20 ---> Entry-12
# 21 ---> Entry-13
# 41 ---> Entry-9
*/
