//--> if we consider soft for both inline constraint and inclass constraint, inline constraint has more priority.
class sample;
	rand int a;
	function void print();
		$display("a=%0d",a);
	endfunction
	constraint a_c{
		soft a inside {[10:20]};
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

//# a=195
//# a=177
//# a=113
//# a=147
//# a=126
//# a=153
//# a=149
//# a=103
//# a=136
//# a=138
