module top;
	int intAS[int];
	int index,data;
	int first,last;

	initial begin
		for(int i=0;i<10;i++) begin
			index=$urandom_range(10,300);
			intAS[index]=$urandom_range(100,562);
		end
		$display("Associative Array Data:- %p",intAS);
//--> .num()--> Number elements in Array.
		$display("The number of elements in Array are :- %0d",intAS.num());
//--> .exists() --> The element with that index is exist or not.  		
		$display("The elements exists in Array or not :- %0d",intAS.exists(24));
//--> .first() --> First element of Assosciative Array	
		intAS.first(first);
		$display("The First element  in Array is :- intAS[%0d]=%0d",first,intAS[first]);
//--> .last() --> Last element in AR
		intAS.last(last);
		$display("The Last element  in Array is :- intAS[%0d]=%0d",last,intAS[last]);
//--> .prev() --> The element before the given index 
		index=124;
		intAS.prev(index);
		$display("The element before given index in Array are :- intAS[%0d]=%0d",index,intAS[index]);
//--> .next() --> the element after the given index	
		index=124;
		intAS.next(index);
		$display("The element after given index in Array are :- intAS[%0d]=%0d",index,intAS[index]);
//--> .delete(index) --> delete at specific index
		intAS.delete(190);
		$display("The AS after deleting 190 index :- %0p",intAS);
//--> .delete() --> delete all elements.		
		intAS.delete();
		$display("The AS after deleting All :- %0p",intAS);
	end
endmodule

/* Output:-
# Start time: 17:00:25 on Nov 13,2025
# Associative Array Data:- '{85:412, 119:414, 124:546, 154:562, 159:386, 164:518, 190:169, 204:427, 229:131, 287:508 }
# The number of elements in Array are :- 10
# The elements exists in Array or not :- 0
# The First element  in Array is :- intAS[85]=412
# The Last element  in Array is :- intAS[287]=508
# The element before given index in Array are :- intAS[119]=414
# The element after given index in Array are :- intAS[154]=562
# The AS after deleting 190 index :- {85:412} {119:414} {124:546} {154:562} {159:386} {164:518} {204:427} {229:131} {287:508} 
# The AS after deleting All :- 
*/
