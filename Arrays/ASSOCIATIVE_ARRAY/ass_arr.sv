module top;
	int intAS[int];
	int index,data;
	string a;
	initial begin
		for(int i=0;i<15;i++)begin
			index=$urandom_range(67,90);
			a=$sformatf("%0s",index);
			intAS[a]=$urandom_range(200,999);
		end
		$display("%p",intAS);
	end
endmodule
