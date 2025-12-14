//--> Writa constraint to generate sequence of 5,7,10,14,15,21,20,28.......
class sample;
	rand int arr[];
	function void print();
		$display("%0p",arr);
	endfunction
	constraint a_c{
		arr.size()==20;
		foreach(arr[i]){
			if(i%2==0) arr[i]==5*((i+2)/2);
			else arr[i]==7*((i+1)/2);
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

//# 5 7 10 14 15 21 20 28 25 35 30 42 35 49 40 56 45 63 50 70
