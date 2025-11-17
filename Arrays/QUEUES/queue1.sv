//--> Queue implementation.
module top;
	int intUQ[$];  //--> Un-Bounded Queue.
	int intBQ[$:9]; //--> Bounded Queue.
	initial begin
		for(int i=0;i<10;i++)begin
			intBQ[i]=$urandom_range(10,25);
			intUQ[i]=$urandom_range(30,55);
		end
		$display("----------------------------------------------------------------");
		$display("Bounded Queue(intBQ):- %p",intBQ);
		$display("Un-Bounded Queue(intUQ):- %p",intUQ);
		$display("----------------------------------------------------------------");
		
		for(int i=0;i<20;i++)begin
			intBQ[i]=$urandom_range(10,25);
			intUQ[i]=$urandom_range(30,55);
		end
		$display("----------------------------------------------------------------");
		$display("-----------> After Increasing the iterations to 20 <------------");
		$display("Bounded Queue(intBQ):- %p",intBQ);
		$display("Un-Bounded Queue(intUQ):- %p",intUQ);
		$display("----------------------------------------------------------------");
	end
endmodule

/* Output:-
# Start time: 15:45:00 on Nov 13,2025
# Loading sv_std.std
# Loading work.top
# ----------------------------------------------------------------
# Bounded Queue(intBQ):- '{18, 16, 16, 12, 17, 20, 25, 15, 24, 21}
# Un-Bounded Queue(intUQ):- '{30, 34, 30, 38, 32, 34, 50, 38, 41, 43}
# ----------------------------------------------------------------
# ----------------------------------------------------------------
# -----------> After Increasing the iterations to 20 <------------
# Bounded Queue(intBQ):- '{13, 15, 15, 23, 18, 16, 19, 10, 14, 10}
# Un-Bounded Queue(intUQ):- '{44, 31, 31, 38, 39, 55, 54, 30, 50, 55, 51, 51, 35, 53, 36, 49, 55, 42, 47, 49}
# ----------------------------------------------------------------
*/
