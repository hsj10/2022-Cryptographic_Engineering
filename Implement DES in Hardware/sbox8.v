`timescale 1ns/100ps 

module sbox8 (input [6:1] addr,output reg [4:1] result);

  always @(addr) begin
    case ({addr[6], addr[1], addr[5:2]})
       0 : result = 13;
       1 : result =  2;
       2 : result =  8;
       3 : result =  4;
       4 : result =  6;
       5 : result = 15;
       6 : result = 11;
       7 : result =  1;
       8 : result = 10;
       9 : result =  9;
      10 : result =  3;
      11 : result = 14;
      12 : result =  5;
      13 : result =  0;
      14 : result = 12;
      15 : result =  7;
      16 : result =  1;
      17 : result = 15;
      18 : result = 13;
      19 : result =  8;
      20 : result = 10;
      21 : result =  3;
      22 : result =  7;
      23 : result =  4;
      24 : result = 12;
      25 : result =  5;
      26 : result =  6;
      27 : result = 11;
      28 : result =  0;
      29 : result = 14;
      30 : result =  9;
      31 : result =  2;
      32 : result =  7;
      33 : result = 11;
      34 : result =  4;
      35 : result =  1;
      36 : result =  9;
      37 : result = 12;
      38 : result = 14;
      39 : result =  2;
      40 : result =  0;
      41 : result =  6;
      42 : result = 10;
      43 : result = 13;
      44 : result = 15;
      45 : result =  3;
      46 : result =  5;
      47 : result =  8;
      48 : result =  2;
      49 : result =  1;
      50 : result = 14;
      51 : result =  7;
      52 : result =  4;
      53 : result = 10;
      54 : result =  8;
      55 : result = 13;
      56 : result = 15;
      57 : result = 12;
      58 : result =  9;
      59 : result =  0;
      60 : result =  3;
      61 : result =  5;
      62 : result =  6;
      63 : result = 11;
    endcase
  end

endmodule


