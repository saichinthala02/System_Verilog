//--> Example for variable order constraint.
class sample;
	rand bit a;
	rand int b;
	
	function void print();
		$display("a=%b, b=%0d",a,b);
	endfunction

	constraint a_C{
		(a!=1) -> (b==0);
		solve a before b;
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


//# a=1, b=783788302
//# a=1, b=-760697415
//# a=1, b=1911429160
//# a=0, b=0
//# a=1, b=884498112
//# a=1, b=-1661557323
//# a=0, b=0
//# a=0, b=0
//# a=0, b=0
//# a=0, b=0
