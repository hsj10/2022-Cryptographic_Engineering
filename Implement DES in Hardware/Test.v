`timescale 1ns/100ps 
module test;

  reg clk;
  reg  [64:1] key;
  reg  [64:1] message;
  wire [64:1] cipher;


initial clk=0;
  always
begin
    #1 clk = ~clk;
end

  Encrypt e(cipher,clk, message, key);

  
  initial
  begin
    key = 64'b0000_0001_0010_0011_0100_0101_0110_0111_1000_1001_1010_1011_1100_1101_1110_1111;
    message =  64'b0000_0001_0010_0011_0100_0101_0110_0111_1000_1001_1010_1011_1100_1101_1110_1111;
  end
  

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, test);	// tb的模块名
  end
	
	initial #10000 $finish;


endmodule