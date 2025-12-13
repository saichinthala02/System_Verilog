//--> Generate random values b/w 100 to 200 using $random.
module top;
	int a;
	initial begin
		repeat(10)begin
			a=((200+100)/2)+$random%(((200-100)/2)+1);
			$display("a=%0d",a);
		end
	end
endmodule

//# a=176
//# a=140
//# a=126
//# a=139
//# a=171
//# a=176
//# a=142
//# a=135
//# a=162
//# a=181
