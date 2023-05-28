`timescale 1ns/100ps 
module sbox2 (input [6:1] addr,output reg [4:1] result);

  always @(addr) begin
    case ({addr[6], addr[1], addr[5:2]}) 
       0 :  result = 15;
       1 :  result =  1;
       2 :  result =  8;
       3 :  result = 14;
       4 :  result =  6;
       5 :  result = 11;
       6 :  result =  3;
       7 :  result =  4;
       8 :  result =  9;
       9 :  result =  7;
      10 :  result =  2;
      11 :  result = 13;
      12 :  result = 12;
      13 :  result =  0;
      14 :  result =  5;
      15 :  result = 10;
      16 :  result =  3;
      17 :  result = 13;
      18 :  result =  4;
      19 :  result =  7;
      20 :  result = 15;
      21 :  result =  2;
      22 :  result =  8;
      23 :  result = 14;
      24 :  result = 12;
      25 :  result =  0;
      26 :  result =  1;
      27 :  result = 10;
      28 :  result =  6;
      29 :  result =  9;
      30 :  result = 11;
      31 :  result =  5;
      32 :  result =  0;
      33 :  result = 14;
      34 :  result =  7;
      35 :  result = 11;
      36 :  result = 10;
      37 :  result =  4;
      38 :  result = 13;
      39 :  result =  1;
      40 :  result =  5;
      41 :  result =  8;
      42 :  result = 12;
      43 :  result =  6;
      44 :  result =  9;
      45 :  result =  3;
      46 :  result =  2;
      47 :  result = 15;
      48 :  result = 13;
      49 :  result =  8;
      50 :  result = 10;
      51 :  result =  1;
      52 :  result =  3;
      53 :  result = 15;
      54 :  result =  4;
      55 :  result =  2;
      56 :  result = 11;
      57 :  result =  6;
      58 :  result =  7;
      59 :  result = 12;
      60 :  result =  0;
      61 :  result =  5;
      62 :  result = 14;
      63 :  result =  9;
    endcase
  end

endmodule
