`timescale 1ns/100ps 

module P(input [32:1] s,input clk,output reg [32:1] perm);
    integer i;
    integer P[32:1];
    reg [32:1] temp;
always@(posedge clk)
begin
#8
      temp[32]=s[17];
      temp[31]=s[26];
      temp[30]=s[13];
      temp[29]=s[12];
      temp[28]=s[4];
      temp[27]=s[21];
      temp[26]=s[5];
      temp[25]=s[16];
      temp[24]=s[32];
      temp[23]=s[18];
      temp[22]=s[10];
      temp[21]=s[7];
      temp[20]=s[28];
      temp[19]=s[15];
      temp[18]=s[2];
      temp[17]=s[23];
      temp[16]=s[31];
      temp[15]=s[25];
      temp[14]=s[9];
      temp[13]=s[19];
      temp[12]=s[1];
      temp[11]=s[6];
      temp[10]=s[30];
      temp[9]=s[24];
      temp[8]=s[14];
      temp[7]=s[20];
      temp[6]=s[3];
      temp[5]=s[27];
      temp[4]=s[11];
      temp[3]=s[22];
      temp[2]=s[29];
      temp[1]=s[8];
      perm = temp;
      end
    endmodule

