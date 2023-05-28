`timescale 1ns/100ps 

module sbox4 (input [6:1] addr,output reg [4:1] result);

  always @(addr) begin
    case ({addr[6], addr[1], addr[5:2]})
       0 : result =  7;
       1 : result = 13;
       2 : result = 14;
       3 : result =  3;
       4 : result =  0;
       5 : result =  6;
       6 : result =  9;
       7 : result = 10;
       8 : result =  1;
       9 : result =  2;
      10 : result =  8;
      11 : result =  5;
      12 : result = 11;
      13 : result = 12;
      14 : result =  4;
      15 : result = 15;
      16 : result = 13;
      17 : result =  8;
      18 : result = 11;
      19 : result =  5;
      20 : result =  6;
      21 : result = 15;
      22 : result =  0;
      23 : result =  3;
      24 : result =  4;
      25 : result =  7;
      26 : result =  2;
      27 : result = 12;
      28 : result =  1;
      29 : result = 10;
      30 : result = 14;
      31 : result =  9;
      32 : result = 10;
      33 : result =  6;
      34 : result =  9;
      35 : result =  0;
      36 : result = 12;
      37 : result = 11;
      38 : result =  7;
      39 : result = 13;
      40 : result = 15;
      41 : result =  1;
      42 : result =  3;
      43 : result = 14;
      44 : result =  5;
      45 : result =  2;
      46 : result =  8;
      47 : result =  4;
      48 : result =  3;
      49 : result = 15;
      50 : result =  0;
      51 : result =  6;
      52 : result = 10;
      53 : result =  1;
      54 : result = 13;
      55 : result =  8;
      56 : result =  9;
      57 : result =  4;
      58 : result =  5;
      59 : result = 11;
      60 : result = 12;
      61 : result =  7;
      62 : result =  2;
      63 : result = 14;
    endcase
  end

endmodule


