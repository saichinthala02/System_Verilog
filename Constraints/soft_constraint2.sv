class sample;
	rand int a;
	function void print();
		$display("a=%0d",a);
	endfunction
	constraint a_c{
		a inside {[10:20]};
	}
endclass

module top;
	sample s;
	initial begin
		s=new();
		repeat(10)begin
			s.randomize() with {soft s.a inside {[100:200]};};
			s.print();
		end
	end
endmodule
//# a=12
//# a=10
//# a=13
//# a=11
//# a=14
//# a=12
//# a=16
//# a=14
//# a=10
//# a=10
