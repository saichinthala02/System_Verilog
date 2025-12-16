//--> Write a constraint to generate an non-consecutive ones in an 16-bit vector.

class sample;
	rand bit[15:0]a;

	function void print();
		$display("a:- %b",a);
	endfunction

	constraint a_c{
		foreach(a[i]){
			if(i>0){
				if(a[i-1]==1) a[i]!=1;
			}
		}
	}
endclass

module top;
	sample s;
	initial begin
		s=new();
		repeat(10)begin
			s.randomize();
			s.print();
		end
	end
endmodule

//# a:- 0010010100000100
//# a:- 0100101010010001
//# a:- 0001000010100010
//# a:- 0010101010100010
//# a:- 1010000101001001
//# a:- 1010000100100100
//# a:- 0101010001000010
//# a:- 1001000000001010
//# a:- 1001000100010001
//# a:- 0010101010101001
