//--> Implementation of Queue Methods.
module top;
	int intQ[$];  //--> Un-Bounded Queue.
	int value;
	initial begin
		//--> push_back() Method
		$display("--------------------------------------------------------");
		$display("---> Push_Back Method <---");
		repeat(10)begin
			value = $urandom_range(10,50);
			intQ.push_back(value);
			$display("%p",intQ);
		end
		$display("--------------------------------------------------------");
		//--> size() Method
		$display("---> Size Method <---");
		value = intQ.size();
		$display("The Size of the Queue is %0d",value);
		$display("--------------------------------------------------------");
		//--> pop_back() Metod.
		$display("---> Pop_Back Method <---");
		repeat(10)begin
			value = intQ.pop_back();
			$display("\t--> %0d",value);
		end
		$display("--------------------------------------------------------");
		
		//--> push_front() Method
		$display("---> Push_Front Method <---");
		repeat(10)begin
			value = $urandom_range(10,50);
			intQ.push_front(value);
			$display("%p",intQ);
		end
		$display("--------------------------------------------------------");
		//--> pop_front() Metod.
		$display("---> Pop_Front Method <---");
		repeat(10)begin
			value = intQ.pop_front();
			$display("\t--> %0d",value);
		end
		$display("--------------------------------------------------------");

		//--> Filling Queue to perform reverse,suffle and delete.
		for(int i=0;i<15;i++)begin
			intQ[i]=$urandom_range(100,200);
		end
		$display("Filled Queue:- %p",intQ);
		//--> reverse() Method
		intQ.reverse();
		$display("---> Reverse Method <---");
		$display("Reversed Queue:- %p",intQ);
		//--> shuffle() Method
		intQ.shuffle();
		$display("---> Shuffle Method <---");
		$display("Shuffled Queue:- %p",intQ);
		$display("--------------------------------------------------------");

		//--> delete() Method
		//--> Delete at sepcific index.
		value = 1;
		$display("---> Delete at Specific Index <---");
		$display("Original Queue:- %p",intQ);
		intQ.delete(value);
		$display("Index %0d Deleted:- %p",value,intQ);
		$display("--------------------------------------------------------");
		//--> Delete All Data.
		$display("---> Delete Data in All Indices <---");
		$display("Original Queue:- %p",intQ);
		intQ.delete();
		$display("Deleted queue:- %p",intQ);
		$display("--------------------------------------------------------");
	end
endmodule

/* Output:-
# Start time: 16:19:42 on Nov 13,2025
# --------------------------------------------------------
# ---> Push_Back Method <---
# '{29}
# '{29, 18}
# '{29, 18, 34}
# '{29, 18, 34, 26}
# '{29, 18, 34, 26, 32}
# '{29, 18, 34, 26, 32, 13}
# '{29, 18, 34, 26, 32, 13, 19}
# '{29, 18, 34, 26, 32, 13, 19, 30}
# '{29, 18, 34, 26, 32, 13, 19, 30, 43}
# '{29, 18, 34, 26, 32, 13, 19, 30, 43, 46}
# --------------------------------------------------------
# ---> Size Method <---
# The Size of the Queue is 10
# --------------------------------------------------------
# ---> Pop_Back Method <---
# 	--> 46
# 	--> 43
# 	--> 30
# 	--> 19
# 	--> 13
# 	--> 32
# 	--> 26
# 	--> 34
# 	--> 18
# 	--> 29
# --------------------------------------------------------
# ---> Push_Front Method <---
# '{12}
# '{25, 12}
# '{18, 25, 12}
# '{28, 18, 25, 12}
# '{23, 28, 18, 25, 12}
# '{30, 23, 28, 18, 25, 12}
# '{29, 30, 23, 28, 18, 25, 12}
# '{17, 29, 30, 23, 28, 18, 25, 12}
# '{12, 17, 29, 30, 23, 28, 18, 25, 12}
# '{20, 12, 17, 29, 30, 23, 28, 18, 25, 12}
# --------------------------------------------------------
# ---> Pop_Front Method <---
# 	--> 20
# 	--> 12
# 	--> 17
# 	--> 29
# 	--> 30
# 	--> 23
# 	--> 28
# 	--> 18
# 	--> 25
# 	--> 12
# --------------------------------------------------------
# Filled Queue:- '{167, 124, 171, 169, 140, 154, 188, 167, 118, 188, 162, 179, 183, 150, 145}
# ---> Reverse Method <---
# Reversed Queue:- '{145, 150, 183, 179, 162, 188, 118, 167, 188, 154, 140, 169, 171, 124, 167}
# ---> Shuffle Method <---
# Shuffled Queue:- '{167, 171, 162, 167, 124, 145, 188, 150, 118, 183, 154, 179, 188, 140, 169}
# --------------------------------------------------------
# ---> Delete at Specific Index <---
# Original Queue:- '{167, 171, 162, 167, 124, 145, 188, 150, 118, 183, 154, 179, 188, 140, 169}
# Index 1 Deleted:- '{167, 162, 167, 124, 145, 188, 150, 118, 183, 154, 179, 188, 140, 169}
# --------------------------------------------------------
# ---> Delete Data in All Indices <---
# Original Queue:- '{167, 162, 167, 124, 145, 188, 150, 118, 183, 154, 179, 188, 140, 169}
# Deleted queue:- '{}
# --------------------------------------------------------
*/
