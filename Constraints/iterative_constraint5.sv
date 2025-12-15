//--> Writa constraint to generate sequence of 2,5,3,4,10,6,6,15,9.....
class sample;
	rand int arr[];
	function void print();
		$display("%0p",arr);
	endfunction
	constraint a_c{
		arr.size()==21;
		foreach(arr[i]){
			if(i%3==0) arr[i]==2*((i+3)/3);
			else if(i%3==1) arr[i]==5*((i+2)/3);
			else arr[i]==3*((i+1)/3);
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

//# 2 5 3 4 10 6 6 15 9 8 20 12 10 25 15 12 30 18 14 35 21
