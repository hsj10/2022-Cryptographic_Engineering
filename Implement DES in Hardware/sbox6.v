`timescale 1ns/100ps 

module sbox6 (input [6:1] addr,output reg [4:1] result);

  always @(addr) begin
    case ({addr[6], addr[1], addr[5:2]})
       0 : result = 12;
       1 : result =  1;
       2 : result = 10;
       3 : result = 15;
       4 : result =  9;
       5 : result =  2;
       6 : result =  6;
       7 : result =  8;
       8 : result =  0;
       9 : result = 13;
      10 : result =  3;
      11 : result =  4;
      12 : result = 14;
      13 : result =  7;
      14 : result =  5;
      15 : result = 11;
      16 : result = 10;
      17 : result = 15;
      18 : result =  4;
      19 : result =  2;
      20 : result =  7;
      21 : result = 12;
      22 : result =  9;
      23 : result =  5;
      24 : result =  6;
      25 : result =  1;
      26 : result = 13;
      27 : result = 14;
      28 : result =  0;
      29 : result = 11;
      30 : result =  3;
      31 : result =  8;
      32 : result =  9;
      33 : result = 14;
      34 : result = 15;
      35 : result =  5;
      36 : result =  2;
      37 : result =  8;
      38 : result = 12;
      39 : result =  3;
      40 : result =  7;
      41 : result =  0;
      42 : result =  4;
      43 : result = 10;
      44 : result =  1;
      45 : result = 13;
      46 : result = 11;
      47 : result =  6;
      48 : result =  4;
      49 : result =  3;
      50 : result =  2;
      51 : result = 12;
      52 : result =  9;
      53 : result =  5;
      54 : result = 15;
      55 : result = 10;
      56 : result = 11;
      57 : result = 14;
      58 : result =  1;
      59 : result =  7;
      60 : result =  6;
      61 : result =  0;
      62 : result =  8;
      63 : result = 13;
    endcase
  end
endmodule


