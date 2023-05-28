`timescale 1ns/100ps 
module ff(input clk, input [32:1] R, input [48:1] K,output reg [32:1] fff);
	
 function [48:1] perm_E(input [32:1] R);
    reg [48:1] temp_E;
    integer i;
    begin	        
        temp_E[48]=R[1];//1
        temp_E[47]=R[32];
        temp_E[46]=R[31];
        temp_E[45]=R[30];
        temp_E[44]=R[29];
        temp_E[43]=R[28];
        temp_E[42]=R[29];
        temp_E[41]=R[28];
        temp_E[40]=R[27];
        temp_E[39]=R[26];//10
        
        
        temp_E[38]=R[25];//11
        temp_E[37]=R[24];
        temp_E[36]=R[25];
        temp_E[35]=R[24];
        temp_E[34]=R[23];
        temp_E[33]=R[22];
        temp_E[32]=R[21];
        temp_E[31]=R[20];
        temp_E[30]=R[21];
        temp_E[29]=R[20];//20
        
        
        temp_E[28]=R[19];//21
        temp_E[27]=R[18];//22
        temp_E[26]=R[17];//23
        temp_E[25]=R[16];//24
        temp_E[24]=R[17];//25
        temp_E[23]=R[16];//26
        temp_E[22]=R[15];
        temp_E[21]=R[14];
        temp_E[20]=R[13];        
        temp_E[19]=R[12];//30
        

        temp_E[18]=R[13];//31
        temp_E[17]=R[12];
        temp_E[16]=R[11];
        temp_E[15]=R[10];
        temp_E[14]=R[9];
        temp_E[13]=R[8];
        temp_E[12]=R[9];
        temp_E[11]=R[8];
        temp_E[10]=R[7];
        temp_E[9]=R[6];//40
        
        
        temp_E[8]=R[5];//41
        temp_E[7]=R[4];
        temp_E[6]=R[5];
        temp_E[5]=R[4];
        temp_E[4]=R[3];
        temp_E[3]=R[2];
        temp_E[2]=R[1];
        temp_E[1]=R[32];//48


      perm_E = temp_E;

          end
  endfunction
  

	reg [48:1] temp;
	reg [32:1] ts;
	reg [5:0] B[8:1];
	wire [4:1] s1,s2,s3,s4,s5,s6,s7,s8;
	wire [32:1] perm;

	
	always@(posedge clk)
	begin
	temp = K ^ perm_E(R);
	
	B[1] <= temp[48:43];
	B[2] <= temp[42:37];
	B[3] <= temp[36:31];
	B[4] <= temp[30:25];
	B[5] <= temp[24:19];
	B[6] <= temp[18:13];
	B[7] <= temp[12:7];
	B[8] <= temp[6:1];
	end
      
	sbox1 x1(B[1],s1);
	sbox2 x2(B[2],s2);
	sbox3 x3(B[3],s3);
	sbox4 x4(B[4],s4);
	sbox5 x5(B[5],s5);
	sbox6 x6(B[6],s6);
	sbox7 x7(B[7],s7);
	sbox8 x8(B[8],s8);
	
	always@(posedge clk)
	begin
	#5
	ts[32:29]<=s1;
	ts[28:25]<=s2;
	ts[24:21]<=s3;
	ts[20:17]<=s4;
	ts[16:13]<=s5;
	ts[12:9]<=s6;
	ts[8:5]<=s7;
	ts[4:1]<=s8;
	end
	
	
P p(ts,clk,perm);

always@(*)
begin
#10
 fff=perm;
end

endmodule
