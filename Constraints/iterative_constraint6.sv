//--> Write a constraint to generate unique random values in an array of size 10 and values in range 10 to 20.
class sample;
	rand int arr[];
	function void print();
		$display("%0p",arr);
	endfunction
	constraint a_c{
		arr.size()==10;
		foreach(arr[i]){
			arr[i] inside {[10:20]};
			foreach(arr[j]){
				if(i != j) arr[i] != arr[j];
			}
		}
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

//# 20 13 19 17 12 18 11 10 14 16
