module top;
  semaphore smp = new(1);
  
  task process1();
    int val;
    val=$urandom_range(1,5);
    $display("Delay Generated in Process-1:- %0d",val);
    #(val);
    smp.get();
    $display("[%0t] --> Process 1 is started",$time);
    #25; //--> Time taken to complete process
    $display("[%0t] --> Process 1 is Completed",$time);
    smp.put();
  endtask
  task process2();
    int val;
    val=$urandom_range(1,5);
    $display("Delay Generated in Process-2:- %0d",val);
    #(val);
    smp.get();
    $display("[%0t] --> Process 2 is started",$time);
    #25; //--> Time taken to complete process
    $display("[%0t] --> Process 2 is Completed",$time);
    smp.put();
  endtask
  
  initial begin
    forever begin
    fork
      process1();
      process2();
    join
    end
    
  end
  initial begin
      #200;
      $finish;
    end
endmodule

/* Output:-
# Delay Generated in Process-1:- 4
# Delay Generated in Process-2:- 3
# [3] --> Process 2 is started
# [28] --> Process 2 is Completed
# [28] --> Process 1 is started
# [53] --> Process 1 is Completed
# Delay Generated in Process-1:- 5
# Delay Generated in Process-2:- 3
# [56] --> Process 2 is started
# [81] --> Process 2 is Completed
# [81] --> Process 1 is started
# [106] --> Process 1 is Completed
# Delay Generated in Process-1:- 3
# Delay Generated in Process-2:- 5
# [109] --> Process 1 is started
# [134] --> Process 1 is Completed
# [134] --> Process 2 is started
# [159] --> Process 2 is Completed
# Delay Generated in Process-1:- 3
# Delay Generated in Process-2:- 5
# [162] --> Process 1 is started
# [187] --> Process 1 is Completed
# [187] --> Process 2 is started
*/
