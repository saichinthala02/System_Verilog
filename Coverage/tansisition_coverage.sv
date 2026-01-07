typedef enum bit[1:0] {S0=0,S1,S2,S3}sig;
class sig_tx;
	rand sig si;
	function void print();
		$display("Data: %0s-->%0d",si,si);
	endfunction

	
endclass

class gen;
	sig_tx tx;
	covergroup cg;
		coverpoint tx.si{
			bins B1_S1_S2 = (S1=>S2);
			bins B2_S0_S3 = (S0=>S3);
			bins B3_S0_S1_S3 = (S0=>S1=>S3);
			bins B4[] = (S1,S2=>S0,S3);
			bins B5 = (S1[*2]);
			bins B6 = (S2[*2:4]);
		}
	endgroup

	function new();
		cg=new();
	endfunction

	task run();
		repeat(50)begin
			tx=new();
			tx.randomize();
			cg.sample();
			tx.print();
		end
	endtask
endclass

module top;
	gen ge;
	initial begin
		ge=new();
		ge.run();
	end
endmodule	

