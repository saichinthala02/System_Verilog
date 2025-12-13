class sample;
	rand integer a;
	function void print();
		$display("a=%0d",a);
	endfunction
	constraint a_c{
		a dist {100:=2,200:=3,400:=4};
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

