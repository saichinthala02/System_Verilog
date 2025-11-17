module top;
	bit [8:0] bitvecAA[int]; // Associative Array

	int indexQ[$]; //--> Queue for index
	bit [8:0] valueQ[$]; //--> Queue of Value
	int index,j=0;

	int indexDA[]; //--> Dynamic Array for Index
	bit [8:0] valueDA[]; //--> Dynamic Array of value.

	int indexA[10]; //--> Fixed Array for Index
	bit [8:0] valueA[10]; //--> Fixed Array for value.

	initial begin
		indexDA=new[10];
		valueDA=new[10];
		$display("----------------------------------------------------------------------------------------------");
		for(int i=0;i<10;)begin
			index=$urandom_range(10,30);
			if(!bitvecAA.exists(index))begin
				bitvecAA[index]=$urandom_range(50,90);
				i++;
			end
		end
		$display("The Array Elements :- %p",bitvecAA);
		$display("----------------------------------------------------------------------------------------------");
		$display("--> Print All Elements Using foreach loop <--");
		foreach(bitvecAA[i]) $display("\t--> bitvecAA[%0d]=%0d",i,bitvecAA[i]);
		$display("-------------------------------------------------------------------------------------");
		void'(bitvecAA.first(index));
		do begin
			indexQ[j]=index;
			valueQ[j]=bitvecAA[index];
			indexDA[j]=index;
			valueDA[j]=bitvecAA[index];
			indexA[j]=index;
			valueA[j]=bitvecAA[index];

			j++;
		end while(bitvecAA.next(index));
		$display("The Elements of Queue(indexQ) :- %p",indexQ);
		$display("The Elements od Queue(valueQ) :- %p",valueQ);
		$display("-------------------------------------------------------------------------------------");
		$display("The Elements of Dynamic_Array(indexDA) :- %p",indexDA);
		$display("The Elements od Dynamic_Array(valueDA) :- %p",valueDA);
		$display("-------------------------------------------------------------------------------------");
		$display("The Elements of Fixed_Array(indexA) :- %p",indexA);
		$display("The Elements od Fixed_Array(valueA) :- %p",valueA);
		$display("-------------------------------------------------------------------------------------");

		//--> Logic to print all index values in reverse order.
		indexQ.reverse();
		$display("Index Values in Reverse order:- %p",indexQ);
		$display("-------------------------------------------------------------------------------------");

	end
endmodule

/* Output:-
# ----------------------------------------------------------------------------------------------
# The Array Elements :- '{11:59, 12:69, 14:83, 16:68, 19:65, 20:66, 22:58, 25:78, 27:52, 29:50 }
# ----------------------------------------------------------------------------------------------
# --> Print All Elements Using foreach loop <--
# 	--> bitvecAA[11]=59
# 	--> bitvecAA[12]=69
# 	--> bitvecAA[14]=83
# 	--> bitvecAA[16]=68
# 	--> bitvecAA[19]=65
# 	--> bitvecAA[20]=66
# 	--> bitvecAA[22]=58
# 	--> bitvecAA[25]=78
# 	--> bitvecAA[27]=52
# 	--> bitvecAA[29]=50
# -------------------------------------------------------------------------------------
# The Elements of Queue(indexQ) :- '{11, 12, 14, 16, 19, 20, 22, 25, 27, 29}
# The Elements od Queue(valueQ) :- '{59, 69, 83, 68, 65, 66, 58, 78, 52, 50}
# -------------------------------------------------------------------------------------
# The Elements of Dynamic_Array(indexDA) :- '{11, 12, 14, 16, 19, 20, 22, 25, 27, 29}
# The Elements od Dynamic_Array(valueDA) :- '{59, 69, 83, 68, 65, 66, 58, 78, 52, 50}
# -------------------------------------------------------------------------------------
# The Elements of Fixed_Array(indexA) :- '{11, 12, 14, 16, 19, 20, 22, 25, 27, 29}
# The Elements od Fixed_Array(valueA) :- '{59, 69, 83, 68, 65, 66, 58, 78, 52, 50}
# -------------------------------------------------------------------------------------
# Index Values in Reverse order:- '{29, 27, 25, 22, 20, 19, 16, 14, 12, 11}
# -------------------------------------------------------------------------------------
*/
