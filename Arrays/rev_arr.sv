module top;
	int arr1[10], arr2[10];
	int i,j,temp;
	initial begin
		arr1 = '{11,24,54,852,74,45,51,44,71,25};
		for (int i = 0; i < 10; i++) begin
			arr2[i] = arr1[10-1-i];
		end
		$display("------------------------------------------------");
		$display("------------> Using Another Array ------------>");
		$display("Original Array:- %0p", arr1);
		$display("Reversd Array:- %0p", arr2);
		$display("------------------------------------------------");
		
		i=0;j=9;
		$display("------------------------------------------------");
		$display("--------> Without Using Another Array -------->");
		$display("Original Array:- %0p", arr1);
		while(i<j)begin
			temp=arr1[i];
			arr1[i]=arr1[j];
			arr1[j]=temp;
			i++;
			j--;
		end	
		$display("Reversd Array:- %0p", arr1);
		$display("------------------------------------------------");
	end
endmodule

/* Output:-
# ------------------------------------------------
# ------------> Using Another Array ------------>
# Original Array:- 11 24 54 852 74 45 51 44 71 25
# Reversd Array:- 25 71 44 51 45 74 852 54 24 11
# ------------------------------------------------
# ------------------------------------------------
# --------> Without Using Another Array -------->
# Original Array:- 11 24 54 852 74 45 51 44 71 25
# Reversd Array:- 25 71 44 51 45 74 852 54 24 11
# ------------------------------------------------
*/

