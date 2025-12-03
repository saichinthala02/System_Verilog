//--> Type-3 Parameterized Parent and non-parameterized child.
class parent #(parameter N=10,type T=int);
	rand bit[N-1:0]a;
	rand T b;

	function void print();
		$display("a=%b",a);
		$display("b=%b",b);
	endfunction
endclass

class child extends parent;
	rand int c;
	function void print();
		super.print();
		$display("c=%b",c);
	endfunction
endclass

module top;
	child ch;
	parent p;
	initial begin
		ch=new();
		ch.randomize();
		ch.print();
		$display("---------------------------------");
		p=new();
		p.print();
	end
endmodule
