module top;
	reg clk,req,ack;
	always #5 clk=~clk;
  	initial begin
        clk = 0;
		req=0;ack=0;
		#20;
		req=1;
		#75;
		ack=1;
    end
	initial begin
		forever begin
			@(posedge clk);
			if(req==1)begin
				fork
					begin
						wait(ack==1);
                      $display("%0t ACK happende",$time);
					end

					begin
						repeat(5)@(posedge clk);
                      $display("%0t ACK Does not Happened",$time);
					end
				join_any
				disable fork;
			end
		end
	end
    initial begin
      	#200;
        $finish;
    end
endmodule

//# 75 ACK Does not Happened
//# 95 ACK happende
//# 105 ACK happende
//# 115 ACK happende
//# 125 ACK happende
//# 135 ACK happende
//# 145 ACK happende
//# 155 ACK happende
//# 165 ACK happende
//# 175 ACK happende
//# 185 ACK happende
//# 195 ACK happende
