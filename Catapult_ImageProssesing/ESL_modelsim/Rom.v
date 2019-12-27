
module Rom(Address,Data_out,Clock,Rst);
  
  input[17:0] Address;
  input Clock,Rst;
  output reg[7:0] Data_out;
  
  reg[7:0] Rom[0:262144];
  
  always@(posedge Clock) begin    
   if(Rst) begin
      $readmemb("Img.txt",Rom);
  end
  
    Data_out <= Rom[Address];
  end
  
endmodule
  
  
