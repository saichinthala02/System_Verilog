//--> Writa constraint to generate sequence of 0,9,99,999,9999,.......
class sample;
	rand int arr[];
	function void print();
		$display("%0p",arr);
	endfunction
	constraint a_c{
		arr.size()==8;
		foreach(arr[i]){
			arr[i]==(10**i)-1;
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

//# 0 9 99 999 9999 99999 999999 9999999
