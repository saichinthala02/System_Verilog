//--> Writing into file.
module top;
	int fh,r,temp;
	int arr[20];
	bit flag;
	initial begin
		fh = $fopen("Data.txt","w");
		for(int i=0;i<20;)begin
			flag=0;
			temp=$urandom_range(1,20);
			for(int j=0;j<i;j++)begin
				if(arr[j]==temp)begin
					flag=1;
					j=i;
				end
			end
			if(flag==0)begin
				arr[i]=temp;
				$fdisplay(fh,"%0d",arr[i]);
				i++;
			end
		end
	end
endmodule
