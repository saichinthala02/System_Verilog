// generating overlapping txns
module top;
	int i,j;
	int value;

	initial begin
		forever begin
			fork
				begin
					$display("%0t --> Transaction-%0d is started",$time,i++);
					#15; //--> Time taken to complete the transaction
					$display("%0t --> Transaction-%0d is Completed",$time,j++);
				end
			join_none
			value=$urandom_range(5,15);
			$display("%0t  -->  %0d",$time,value);
			#(value);
		end
	end
	initial begin
		#200;
		$finish;
	end
endmodule

/*
# 0  -->  9
# 0 --> Transaction-0 is started
# 9  -->  5
# 9 --> Transaction-1 is started
# 14  -->  5
# 14 --> Transaction-2 is started
# 15 --> Transaction-0 is Completed
# 19  -->  15
# 19 --> Transaction-3 is started
# 24 --> Transaction-1 is Completed
# 29 --> Transaction-2 is Completed
# 34  -->  10
# 34 --> Transaction-4 is started
# 34 --> Transaction-3 is Completed
# 44  -->  13
# 44 --> Transaction-5 is started
# 49 --> Transaction-4 is Completed
# 57  -->  8
# 57 --> Transaction-6 is started
# 59 --> Transaction-5 is Completed
# 65  -->  15
# 65 --> Transaction-7 is started
# 72 --> Transaction-6 is Completed
# 80  -->  14
# 80 --> Transaction-8 is started
# 80 --> Transaction-7 is Completed
# 94  -->  13
# 94 --> Transaction-9 is started
# 95 --> Transaction-8 is Completed
# 107  -->  7
# 107 --> Transaction-10 is started
# 109 --> Transaction-9 is Completed
# 114  -->  7
# 114 --> Transaction-11 is started
# 121  -->  9
# 121 --> Transaction-12 is started
# 122 --> Transaction-10 is Completed
# 129 --> Transaction-11 is Completed
# 130  -->  8
# 130 --> Transaction-13 is started
# 136 --> Transaction-12 is Completed
# 138  -->  13
# 138 --> Transaction-14 is started
# 145 --> Transaction-13 is Completed
# 151  -->  6
# 151 --> Transaction-15 is started
# 153 --> Transaction-14 is Completed
# 157  -->  8
# 157 --> Transaction-16 is started
# 165  -->  10
# 165 --> Transaction-17 is started
# 166 --> Transaction-15 is Completed
# 172 --> Transaction-16 is Completed
# 175  -->  14
# 175 --> Transaction-18 is started
# 180 --> Transaction-17 is Completed
# 189  -->  11
# 189 --> Transaction-19 is started
# 190 --> Transaction-18 is Completed
*/
