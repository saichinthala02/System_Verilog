//--> Writa constraint to generate sequence of 0,1,2,3,4,5,6.............
class sample;
	rand int arr[];
	function void print();
		$display("%0p",arr);
	endfunction
	constraint a_c{
		arr.size()==10;
		foreach(arr[i]){
			arr[i]==i;
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

//# 0 1 2 3 4 5 6 7 8 9
