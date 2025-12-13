typedef enum bit[1:0]{SMALL=0,MEDIUM,LARGE}pkt_type;
class sample;
	rand int len;
	rand pkt_type p_t;

	function void print();
		$display("Pkt_Type:- %0s ---> len:- %0d",p_t,len);
	endfunction

	constraint s_c{
		p_t != 3;
		(p_t==SMALL)->(len inside {[100:200]});
		(p_t==MEDIUM)->(len inside {[201:500]});
		(p_t==LARGE)->(len inside {[501:700]});
	}
endclass
module top;
	sample s;
	initial begin
		repeat(15)begin
			s=new();
			s.randomize();
			s.print();
		end
	end
endmodule
//# Pkt_Type:- SMALL ---> len:- 157
//# Pkt_Type:- MEDIUM ---> len:- 262
//# Pkt_Type:- LARGE ---> len:- 547
//# Pkt_Type:- MEDIUM ---> len:- 443
//# Pkt_Type:- MEDIUM ---> len:- 231
//# Pkt_Type:- MEDIUM ---> len:- 497
//# Pkt_Type:- MEDIUM ---> len:- 296
//# Pkt_Type:- MEDIUM ---> len:- 223
//# Pkt_Type:- MEDIUM ---> len:- 223
//# Pkt_Type:- LARGE ---> len:- 531
//# Pkt_Type:- SMALL ---> len:- 173
//# Pkt_Type:- MEDIUM ---> len:- 460
//# Pkt_Type:- SMALL ---> len:- 195
//# Pkt_Type:- MEDIUM ---> len:- 404
//# Pkt_Type:- LARGE ---> len:- 655
