//--> Implement a Code to reverse the Given String.
module top;
	string str1,str2;
	initial begin
		str1="VLSI_GURU";
		str2=str1;
		for(int i=0;i<str1.len();i++)begin
			str2.putc(i,str1.getc(str1.len()-1-i));
		end
		$display("Given String : %0s",str1);
		$display("Reversed String : %0s",str2);
	end
endmodule

/* Output:-
 Given String : VLSI_GURU
# Reversed String : URUG_ISLV
*/

//--> Using index
module top1;
	string s1,s2;
	initial begin
		s1="INTEL";
		s2=s1;
		for(int i=0;i<s1.len();i++)begin
			s2[i]=s1[s1.len()-1-i];
		end
		$display("Given String : %0s",s1);
		$display("Reversed String : %0s",s2);
	end
endmodule
/* Output:-
# Given String : INTEL
# Reversed String : LETNI
*/


//--> Write a code to get the first word in String.
module top2;
	string s1,s2;
	int sp=0;
	initial begin
		s1="Welcome to AMD";
		for(int i=0;i<s1.len();i++)begin
			if(s1.getc(i)==" ")begin
				s2=s1.substr(0,i-1);
				i=s1.len();
			end
		end
		$display("First Word : %0s",s2);
	end
endmodule
// Output:-
// First Word : Welcome


//--> Second word
module top3;
	string s1,s2;
	int sp=0;
	int l1,l2;
	initial begin
		s1="Indian National Cricket team";
		for(int i=0;i<s1.len();i++)begin
			if(s1.getc(i)==" ")begin
				l1=i+1;
				i=s1.len();
			end
		end
		for(int i=0;i<s1.len();i++)begin
			if(s1.getc(i)==" ")begin
				sp++;
				if(sp==2) begin
					l2=i-1;
					i=s1.len();
				end
			end 
		end
		s2=s1.substr(l1,l2);
		$display("Second Word : %0s",s2);
	end
endmodule
// Output:-
// # Second Word : National
