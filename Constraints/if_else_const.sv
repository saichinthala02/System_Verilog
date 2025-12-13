class sample;
	rand integer a,b;
	function void print();
		$display("a=%0d, b=%0d",a,b);
	endfunction
	constraint a_c{
		a inside {[-10:10]};
		b inside {[-10:10]};
		if(a>0) b>0;
		else if(a==0) b==0;
		else b<0;
	}
endclass

module top;
	sample s;
	initial begin
		repeat(10)begin
			s=new();
			s.randomize();
			s.print();
		end
	end
endmodule
//# a=7, b=2
//# a=-4, b=-6
//# a=-5, b=-9
//# a=0, b=0
//# a=8, b=7
//# a=1, b=3
//# a=10, b=3
//# a=-2, b=-7
//# a=-4, b=-10
//# a=6, b=3
