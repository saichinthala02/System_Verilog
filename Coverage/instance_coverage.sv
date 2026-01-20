//--> Conisider a Master is connected with 3 slave with APB interface.
//--> Functional Coverage using instance coverage, consider only psel.
class apb_tx;
	rand bit[3:0]psel;
	function void print(input string str);
		$display("----------> %0s <----------",str);
		$display("PSEL:- %b",psel);
	endfunction
	constraint p_c{
		$onehot0(psel);
	}
endclass

//creating object for apb_tx globally
apb_tx tx = new();

covergroup apb_cg;
	coverpoint tx.psel{
		bins NO_SLAVE = {4'b0000};
		bins SLAVE_0  = {4'b0001};
		bins SLAVE_1  = {4'b0010};
		bins SLAVE_2  = {4'b0100};
		bins SLAVE_3  = {4'b1000};
		bins others=default;
	}
endgroup

class apb_cg1;
	apb_cg cg1;
	apb_tx tx1;
	function new();
		cg1=new();
	endfunction
		
	task run();
		tx1=new();
		repeat(10)begin
			tx1.randomize();
			tx=new tx1;
			tx.print("C1");
			cg1.sample();
		end
	endtask
endclass

class apb_cg2;
	apb_cg cg2;
	apb_tx tx2;
	function new();
		cg2=new();
	endfunction
		
	task run();
		tx2=new();
		repeat(10)begin
			tx2.randomize();
			tx=new tx2;
			tx.print("C2");
			cg2.sample();
		end
	endtask
endclass

class apb_cg3;
	apb_cg cg3;
	apb_tx tx3;
	function new();
		cg3=new();
	endfunction
		
	task run();
		tx3=new();
		repeat(20)begin
			tx3.randomize();
			tx=new tx3;
			tx.print("C3");
			cg3.sample();
		end
	endtask
endclass

module top;
	apb_cg1 c1;
	apb_cg2 c2;
	apb_cg3 c3;

	initial begin
		c1=new();
		c2=new();
		c3=new();

		c1.run();
		c2.run();
		c3.run();
	end
endmodule

