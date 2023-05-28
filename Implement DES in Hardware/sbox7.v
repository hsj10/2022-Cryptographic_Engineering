`timescale 1ns/100ps 

module sbox7 (input [6:1] addr,output reg [4:1] result);

  always @(addr) begin
    case ({addr[6], addr[1], addr[5:2]})
       0 : result =  4;
       1 : result = 11;
       2 : result =  2;
       3 : result = 14;
       4 : result = 15;
       5 : result =  0;
       6 : result =  8;
       7 : result = 13;
       8 : result =  3;
       9 : result = 12;
      10 : result =  9;
      11 : result =  7;
      12 : result =  5;
      13 : result = 10;
      14 : result =  6;
      15 : result =  1;
      16 : result = 13;
      17 : result =  0;
      18 : result = 11;
      19 : result =  7;
      20 : result =  4;
      21 : result =  9;
      22 : result =  1;
      23 : result = 10;
      24 : result = 14;
      25 : result =  3;
      26 : result =  5;
      27 : result = 12;
      28 : result =  2;
      29 : result = 15;
      30 : result =  8;
      31 : result =  6;
      32 : result =  1;
      33 : result =  4;
      34 : result = 11;
      35 : result = 13;
      36 : result = 12;
      37 : result =  3;
      38 : result =  7;
      39 : result = 14;
      40 : result = 10;
      41 : result = 15;
      42 : result =  6;
      43 : result =  8;
      44 : result =  0;
      45 : result =  5;
      46 : result =  9;
      47 : result =  2;
      48 : result =  6;
      49 : result = 11;
      50 : result = 13;
      51 : result =  8;
      52 : result =  1;
      53 : result =  4;
      54 : result = 10;
      55 : result =  7;
      56 : result =  9;
      57 : result =  5;
      58 : result =  0;
      59 : result = 15;
      60 : result = 14;
      61 : result =  2;
      62 : result =  3;
      63 : result = 12;
    endcase
  end

endmodule


