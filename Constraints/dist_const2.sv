class sample;
	rand integer a;
	function void print();
		$display("a=%0d",a);
	endfunction
	constraint a_c{
		a dist {[100:200]:/3,[300:400]:/2,500:=4};
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
//# a=112
//# a=300
//# a=344
//# a=187
//# a=182
//# a=500
//# a=500
//# a=123
//# a=363
//# a=187
