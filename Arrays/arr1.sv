module top;
	int arr[10];
	int id;
	initial begin
		foreach(arr[i]) arr[i]=$urandom_range(10,20);
		$display("Random Array:- %p",arr);
		arr[5]=100;
		$display("100 added at 5th index:- %p",arr);
		for(int i=5;i<10;i++) arr[i]=arr[i+1];
		$display("Value deleted at 5th index:- %p",arr);
	end
endmodule

/* Output:-
# Random Array:- '{17, 20, 18, 13, 15, 19, 13, 20, 16, 13}
# 100 added at 5th index:- '{17, 20, 18, 13, 15, 100, 13, 20, 16, 13}
# Value deleted at 5th index:- '{17, 20, 18, 13, 15, 13, 20, 16, 13, 0}
*/

