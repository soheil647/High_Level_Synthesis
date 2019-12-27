
module Ram(Address,Data_In,Clock,Rst,WriteEnable,finish);
  
  input[17:0] Address;
  input Clock,Rst,WriteEnable;
  input [7:0] Data_In;
  input finish;
  
  reg[7:0] Ram[0:262144];
  
  always@(posedge Clock) begin
    if(finish)begin
      $writememh("result.txt",Ram);
    end
  
  end
  
  always@(posedge WriteEnable)begin 
  if(!Rst) begin  
      Ram[Address] <= Data_In;
    end
  end
  
  
endmodule
  
