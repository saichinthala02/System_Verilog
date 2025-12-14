//--> Writa constraint to generate sequence of 0 1 0 2 0 3 0 4 0 5 0 6 ........... 
class sample;
	rand int arr[];
	function void print();
		$display("%0p",arr);
	endfunction
	constraint a_c{
		arr.size()==20;
		foreach(arr[i]){
			if(i%2==0) arr[i]==0;
			else arr[i]==(i+1)/2;
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

//# 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10
