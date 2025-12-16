//--> Write a constraint to generate unique random array of size 10 with values in range 10 to 20.
class sample;
	rand int arr[];

	function void print();
		$display("Array:- %p",arr);
	endfunction

	constraint a_c{
		arr.size()==10;
		foreach(arr[i]){
			arr[i] inside {[10:20]};
		}
		unique{arr};
	}
endclass

module top;
	sample s;
	initial begin
		s=new();
		s.randomize();
		s.print();
	end
endmodule

//# Array:- '{16, 14, 10, 11, 18, 12, 17, 19, 13, 20}
