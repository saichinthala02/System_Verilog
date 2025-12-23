typedef enum bit{MEMORY=0,FIFO}cs_t;
class transaction;
	rand bit wr_rd;
	rand bit wr_en;
	rand cs_t cs;

	function void print(string str="txn");
		$display("-----> %0s <-----",str);
		$display("cs:-%b",cs);
		$display("wr_rd:-%b",wr_rd);
		$display("wr_en:-%b",wr_en);
	endfunction
endclass

class coverage;
	transaction tx;
	covergroup cg;
		coverpoint tx.wr_rd iff(tx.cs==MEMORY){
			bins WRITES = {1'b1};
			bins READS = {1'b0};
		}
		coverpoint tx.wr_en iff(tx.cs==FIFO){
			bins WRITES = {1'b1};
			ignore_bins READS = {1'b0};
		}
	endgroup

	function new();
		cg=new();
	endfunction

	task run();
		repeat(10)begin
			tx=new();
			tx.randomize();
			cg.sample();
			tx.print();
		end	
	endtask
endclass

module top;
	coverage cov;
	initial begin
		cov=new();
		cov.run();
	end
endmodule
