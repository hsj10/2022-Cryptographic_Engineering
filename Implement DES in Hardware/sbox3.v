
`timescale 1ns/100ps 

module sbox3 (input [6:1] addr,output reg [4:1] result);


  always @(addr) begin
    case ({addr[6], addr[1], addr[5:2]})
       0 : result = 10;
       1 : result =  0;
       2 : result =  9;
       3 : result = 14;
       4 : result =  6;
       5 : result =  3;
       6 : result = 15;
       7 : result =  5;
       8 : result =  1;
       9 : result = 13;
      10 : result = 12;
      11 : result =  7;
      12 : result = 11;
      13 : result =  4;
      14 : result =  2;
      15 : result =  8;
      16 : result = 13;
      17 : result =  7;
      18 : result =  0;
      19 : result =  9;
      20 : result =  3;
      21 : result =  4;
      22 : result =  6;
      23 : result = 10;
      24 : result =  2;
      25 : result =  8;
      26 : result =  5;
      27 : result = 14;
      28 : result = 12;
      29 : result = 11;
      30 : result = 15;
      31 : result =  1;
      32 : result = 13;
      33 : result =  6;
      34 : result =  4;
      35 : result =  9;
      36 : result =  8;
      37 : result = 15;
      38 : result =  3;
      39 : result =  0;
      40 : result = 11;
      41 : result =  1;
      42 : result =  2;
      43 : result = 12;
      44 : result =  5;
      45 : result = 10;
      46 : result = 14;
      47 : result =  7;
      48 : result =  1;
      49 : result = 10;
      50 : result = 13;
      51 : result =  0;
      52 : result =  6;
      53 : result =  9;
      54 : result =  8;
      55 : result =  7;
      56 : result =  4;
      57 : result = 15;
      58 : result = 14;
      59 : result =  3;
      60 : result = 11;
      61 : result =  5;
      62 : result =  2;
      63 : result = 12;
    endcase
  end

endmodule


