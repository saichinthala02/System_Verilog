//--> Implementation of String Methods.
//--> .len()
//--> .putc()
//--> .getc()
//--> .toupper()
//--> .tolower()
//--> .compare()
//--> .icompare()
//--> .substr()
//--> .atoi()
//--> .itoa()
//--> .itor()
module top;
	string str,str1,str2;
	integer a,b,c;
	real z;
	byte k;
	initial begin
	//--> len()
		str1="Hello Welcome to Intel";
		$display("String-1: %0s || Length: %0d",str1,str1.len());
		$display("-----------------------------------------------");
	//--> putc()	
		str1.putc(3,"s");
		$display("String-1: %0s || Length: %0d",str1,str1.len());
		$display("-----------------------------------------------");
	//--> getc()
		$cast(str2,str1.getc(3));
		$display("getc() :%0s",str2);
		$display("-----------------------------------------------");
	//--> toupper()
		str1="Cadance";
		str2=str1.toupper();
		$display("Str : %0s",str1);
		$display("Str_Upper : %0s",str2);
		$display("-----------------------------------------------");
	//--> tolower()
		str1="INTEL";
		str2=str1.tolower();
		$display("Str : %0s",str1);
		$display("Str_Lower : %0s",str2);
		$display("-----------------------------------------------");
	//--> compare()
		str1="hello";
		str2="HELLO";
		$display("String-1: %0s",str1);
		$display("String-1: %0s",str2);
		if(!str1.compare(str2))$display("Both are same");
		else $display("Both are not same");
		$display("-----------------------------------------------");
	//--> icompare()
		str1="hello";
		str2="HELLO";
		$display("String-1: %0s",str1);
		$display("String-1: %0s",str2);
		if(!str1.icompare(str2))$display("Both are same");
		else $display("Both are not same");
		$display("-----------------------------------------------");	
	//--> substr()
		str = "VLSI Guru";
		str1=str.substr(2,8);
		$display("String : %0s",str);
		$display("Sub-String : %0s",str1);
		$display("-----------------------------------------------");	
	//--> itoa()
		str1="72";
		a=str1.atoi();
		$display("\t--> ASCII to Integer:- %0s || %0d",a,str1);
		$display("-----------------------------------------------");	
	//--> itoreal()
		str="12";
		z=str.atoreal();
		$display("\t--> Real to ASCII:- %0f || %0f",str,z);
		$display("-----------------------------------------------");	

	end
endmodule
