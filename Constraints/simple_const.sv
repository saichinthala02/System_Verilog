class sample;
	rand integer a,b,c;
	function void print();
		$display("a=%0d, b=%0d, c=%0d",a,b,c);
	endfunction
	constraint a_c{
		a inside {[10:100]};
		b inside {[10:100]};
		c inside {[10:100]};
		a<b;
		b<c;
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

//# a=44, b=59, c=80
//# a=10, b=11, c=12
//# a=36, b=47, c=64
//# a=12, b=16, c=80
//# a=42, b=97, c=99
//# a=52, b=91, c=95
//# a=48, b=94, c=95
//# a=32, b=40, c=90
//# a=10, b=11, c=12
//# a=21, b=30, c=71
