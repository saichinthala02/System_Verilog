//--> Implementation of FIFO Using Queue.
module fifo;
	int intQ[$];
	task put(input int data);
		intQ.push_front(data);
	endtask

	function int get();
		return intQ.pop_back();
	endfunction
endmodule

module top;
	fifo dut();
	int data,value;
	initial begin
		$display("-------> FIFO WRITES <---------");
		repeat(15)begin
			data=$urandom_range(15,50);
			dut.put(data);
			$display("%p",dut.intQ);
		end
		$display("-------> FIFO READS <---------");
		repeat(15)begin
			value=dut.get();
			$display("\t--> %0d",value);
		end
	end
endmodule

/* Output:-
# -------> FIFO WRITES <---------
# '{15}
# '{25, 15}
# '{25, 25, 15}
# '{41, 25, 25, 15}
# '{37, 41, 25, 25, 15}
# '{25, 37, 41, 25, 25, 15}
# '{37, 25, 37, 41, 25, 25, 15}
# '{49, 37, 25, 37, 41, 25, 25, 15}
# '{26, 49, 37, 25, 37, 41, 25, 25, 15}
# '{25, 26, 49, 37, 25, 37, 41, 25, 25, 15}
# '{21, 25, 26, 49, 37, 25, 37, 41, 25, 25, 15}
# '{47, 21, 25, 26, 49, 37, 25, 37, 41, 25, 25, 15}
# '{18, 47, 21, 25, 26, 49, 37, 25, 37, 41, 25, 25, 15}
# '{33, 18, 47, 21, 25, 26, 49, 37, 25, 37, 41, 25, 25, 15}
# '{48, 33, 18, 47, 21, 25, 26, 49, 37, 25, 37, 41, 25, 25, 15}
# -------> FIFO READS <---------
# 	--> 15
# 	--> 25
# 	--> 25
# 	--> 41
# 	--> 37
# 	--> 25
# 	--> 37
# 	--> 49
# 	--> 26
# 	--> 25
# 	--> 21
# 	--> 47
# 	--> 18
# 	--> 33
# 	--> 48
*/
