`timescale 1ps/1ps

module Test();
    
  reg Clock,Rst,finish;


  Top_File UT(Clock,Rst,finish);       
        
        
        
  always #6 Clock=~Clock;
  
  initial begin
  finish=0; 
  Clock=0;
  Rst=1;
  #18
  Rst=0;
  #69300000
  finish=1;
  #50
  finish=0;
  #150

  $stop;
  
    
  end
  
  
endmodule