//--> Implementation of Stack Using Queue.
module stack;
	int intQ[$];
	task put(input int data);
		intQ.push_front(data);
	endtask

	function int get();
		return intQ.pop_front();
	endfunction
endmodule

module top;
	stack dut();
	int data,value;
	initial begin
		$display("-------> STACK WRITES <---------");
		repeat(15)begin
			data=$urandom_range(15,50);
			dut.put(data);
			$display("%p",dut.intQ);
		end
		$display("-------> STACK READS <---------");
		repeat(15)begin
			value=dut.get();
			$display("\t--> %0d",value);
		end
	end
endmodule

/* Output:-
# Start time: 16:54:36 on Nov 13,2025
# -------> STACK WRITES <---------
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
# -------> STACK READS <---------
# 	--> 48
# 	--> 33
# 	--> 18
# 	--> 47
# 	--> 21
# 	--> 25
# 	--> 26
# 	--> 49
# 	--> 37
# 	--> 25
# 	--> 37
# 	--> 41
# 	--> 25
# 	--> 25
# 	--> 15
*/
