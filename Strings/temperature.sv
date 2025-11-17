module top;
	string str;
	integer i, fh, r,count;
	real rd,sum,avg;

	initial begin
		sum=0.0;
		avg=0.0;
		count=0;
		fh = $fopen("Temp.txt", "r");
		if (fh == 0) begin
			$display("Error: could not open file");
			$finish;
		end

		for (i = 0; i < 10; i = i + 1) begin
			r = $fgets(str, fh);
			$write("Read line: %0s", str);
			// Convert string to real
			rd = str.atoreal();
			$display("Converted real value: %0f", rd);
			count++;
			sum=sum+rd;
		end
		if(count>0) avg=sum/count;
		else avg=0;

		$display("Average Temperatur:- %0f",avg);
		$fclose(fh);
	end
endmodule

