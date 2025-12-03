//--> Parameterized Class.
//--> FIFO  LIFO
class fifo #(parameter SIZE=10,parameter type Q_T=int);
	Q_T queue[$];
	Q_T value;
	function void put();
		repeat(SIZE)begin
			value=$urandom_range(65,90);
			queue.push_front(value);
			$display("Data:- %p",queue);
		end
	endfunction;

	function void get(input bit s);
	case(s)
	0: begin
		$display("--> Fifo Reads <--");
		repeat(SIZE)begin
			value=queue.pop_back();
			$display("Pop-Out Value:- %0d",value);
			$display("Data:- %p",queue);
		end
		end
	1:begin
		$display("--> Lifo Reads <--");
			repeat(SIZE)begin
			value=queue.pop_front();
			$display("Pop-Out Value:- %0d",value);
			$display("Data:- %p",queue);
		end

	end
	endfunction
endmodule

module top;
	fifo f;
	initial begin
		f=new();
		f.put();
		f.get(0);
	end
endmodule
