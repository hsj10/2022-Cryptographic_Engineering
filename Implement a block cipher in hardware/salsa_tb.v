`timescale 1ns / 1ps
module test;

reg clk;
reg [256:1] Key;
reg [64:1] Nonce;
wire [512:1] Init;
wire [512:1] stream;

initial clk=0;
  always
begin
    #1 clk = ~clk;
end

initial
begin
	Key=256'h1122_3344_5566_7788_99aa_bbcc_ddee_ffff_1122_3344_5566_7788_99aa_bbcc_ddee_ffff;
	Nonce=64'h3251_4481_a519_8296;
end

initia in(Key,Nonce,Init);

//initial #100 $monitor("%h\n%h\n%h\n%h\n",Init[512:385],Init[384:257],Init[256:129],Init[128:1]);

initial #100;

core c(Init,clk,stream);

initial #150 $monitor("%h",stream);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, test);
  end
	
	initial #10000 $finish;


endmodule
