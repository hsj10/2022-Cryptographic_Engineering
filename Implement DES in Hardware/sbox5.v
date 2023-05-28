`timescale 1ns/100ps 
 
module sbox5 (input [6:1] addr,output reg [4:1] result);

  always @(addr) begin
    case ({addr[6], addr[1], addr[5:2]})
       0 : result =  2;
       1 : result = 12;
       2 : result =  4;
       3 : result =  1;
       4 : result =  7;
       5 : result = 10;
       6 : result = 11;
       7 : result =  6;
       8 : result =  8;
       9 : result =  5;
      10 : result =  3;
      11 : result = 15;
      12 : result = 13;
      13 : result =  0;
      14 : result = 14;
      15 : result =  9;
      16 : result = 14;
      17 : result = 11;
      18 : result =  2;
      19 : result = 12;
      20 : result =  4;
      21 : result =  7;
      22 : result = 13;
      23 : result =  1;
      24 : result =  5;
      25 : result =  0;
      26 : result = 15;
      27 : result = 10;
      28 : result =  3;
      29 : result =  9;
      30 : result =  8;
      31 : result =  6;
      32 : result =  4;
      33 : result =  2;
      34 : result =  1;
      35 : result = 11;
      36 : result = 10;
      37 : result = 13;
      38 : result =  7;
      39 : result =  8;
      40 : result = 15;
      41 : result =  9;
      42 : result = 12;
      43 : result =  5;
      44 : result =  6;
      45 : result =  3;
      46 : result =  0;
      47 : result = 14;
      48 : result = 11;
      49 : result =  8;
      50 : result = 12;
      51 : result =  7;
      52 : result =  1;
      53 : result = 14;
      54 : result =  2;
      55 : result = 13;
      56 : result =  6;
      57 : result = 15;
      58 : result =  0;
      59 : result =  9;
      60 : result = 10;
      61 : result =  4;
      62 : result =  5;
      63 : result =  3;
    endcase
  end

endmodule


