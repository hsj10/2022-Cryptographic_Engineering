`timescale 1ns/100ps 
module sbox1(input [6:1] addr,output reg [4:1] result);
always@(addr)
begin
case ({addr[6], addr[1], addr[5:2]})
	0 : result = 14;
	1 : result =  4;
	2 : result = 13;
	3 : result =  1;
	4 : result =  2;
	5 : result = 15;
	6 : result = 11;
	7 : result =  8;
	8 : result =  3;
	9 : result = 10;
	10 : result =  6;
	11 : result = 12;
	12 : result =  5;
	13 : result =  9;
	14 : result =  0;
	15 : result =  7;
	16 : result =  0;
	17 : result = 15;
	18 : result =  7;
	19 : result =  4;
	20 : result = 14;
	21 : result =  2;
	22 : result = 13;
	23 : result =  1;
	24 : result = 10;
	25 : result =  6;
	26 : result = 12;
	27 : result = 11;
	28 : result =  9;
	29 : result =  5;
	30 : result =  3;
	31 : result =  8;
	32 : result =  4;
	33 : result =  1;
	34 : result = 14;
	35 : result =  8;
	36 : result = 13;
	37 : result =  6;
	38 : result =  2;
	39 : result = 11;
	40 : result = 15;
	41 : result = 12;
	42 : result =  9;
	43 : result =  7;
	44 : result =  3;
	45 : result = 10;
	46 : result =  5;
	47 : result =  0;
	48 : result = 15;
	49 : result = 12;
	50 : result =  8;
	51 : result =  2;
	52 : result =  4;
	53 : result =  9;
	54 : result =  1;
	55 : result =  7;
	56 : result =  5;
	57 : result = 11;
	58 : result =  3;
	59 : result = 14;
	60 : result = 10;
	61 : result =  0;
	62 : result =  6;
	63 : result = 13;
endcase
end
endmodule

