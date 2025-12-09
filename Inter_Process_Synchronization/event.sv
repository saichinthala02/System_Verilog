//--> 4,3,5,2,1

module top;
	event e1,e2,e3,e4;
	initial begin
		wait(e1.triggered());
		$display("Process-1");
	end
	initial begin
		wait(e2.triggered());
		$display("Process-2");
		-> e1;
	end
	initial begin
		wait(e3.triggered());
		$display("Process-3");
		-> e4;
	end
	initial begin
		$display("Process-4");
		-> e3;
	end
	initial begin
		wait(e4.triggered());
		$display("Process-5");
		-> e2;
	end
endmodule

/* Output:-
# Process-4
# Process-3
# Process-5
# Process-2
# Process-1
*/
