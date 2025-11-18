//--> Reading the data from the file.
module top;
	int fh,r,num=0,sum=0;
	string s;

	initial begin
		fh=$fopen("Data.txt","r");
		while($fgets(s,fh))begin
			num=s.atoi();
			$display("%0d",num);
			sum+=num;
		end
		$display("The Sum of all values is %0d",sum);
	end
endmodule
