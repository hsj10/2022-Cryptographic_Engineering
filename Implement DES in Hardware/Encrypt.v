`timescale 1ns/100ps 
module Encrypt(output reg [64:1] ciphertext,input clk, input [64:1] text, input [64:1] key);

	function [64:1] IP1(input [64:1] text);
	reg [64:1] temp;
	integer i;
	begin
		temp[64]=text[7];
		temp[63]=text[15];
		temp[62]=text[23];
		temp[61]=text[31];
		temp[60]=text[39];
		temp[59]=text[47];
		temp[58]=text[55];
		temp[57]=text[63];
		temp[56]=text[5];
		temp[55]=text[13];
		temp[54]=text[21];
		temp[53]=text[29];
		temp[52]=text[37];
		temp[51]=text[45];
		temp[50]=text[53];
		temp[49]=text[61];
		temp[48]=text[3];
		temp[47]=text[11];
		temp[46]=text[19];
		temp[45]=text[27];
		temp[44]=text[35];
		temp[43]=text[43];
		temp[42]=text[51];
		temp[41]=text[59];
		temp[40]=text[1];
		temp[39]=text[9];
		temp[38]=text[17];
		temp[37]=text[25];
		temp[36]=text[33];
		temp[35]=text[41];
		temp[34]=text[49];
		temp[33]=text[57];
		temp[32]=text[8];
		temp[31]=text[16];
		temp[30]=text[24];
		temp[29]=text[32];
		temp[28]=text[40];
		temp[27]=text[48];
		temp[26]=text[56];
		temp[25]=text[64];
		temp[24]=text[6];
		temp[23]=text[14];
		temp[22]=text[22];
		temp[21]=text[30];
		temp[20]=text[38];
		temp[19]=text[46];
		temp[18]=text[54];
		temp[17]=text[62];
		temp[16]=text[4];
		temp[15]=text[12];
		temp[14]=text[20];
		temp[13]=text[28];
		temp[12]=text[36];
		temp[11]=text[44];
		temp[10]=text[52];
		temp[9]=text[60];
		temp[8]=text[2];
		temp[7]=text[10];
		temp[6]=text[18];
		temp[5]=text[26];
		temp[4]=text[34];
		temp[3]=text[42];
		temp[2]=text[50];
		temp[1]=text[58];
		
		IP1 = temp;
	end
	endfunction


	function [64:1] IP2(input [64:1] text);
	reg [64:1] temp;
	integer i;
	begin
		temp[64]=text[25];
		temp[63]=text[57];
		temp[62]=text[17];
		temp[61]=text[49];
		temp[60]=text[9];
		temp[59]=text[41];
		temp[58]=text[1];
		temp[57]=text[33];
		temp[56]=text[26];
		temp[55]=text[58];
		temp[54]=text[18];
		temp[53]=text[50];
		temp[52]=text[10];
		temp[51]=text[42];
		temp[50]=text[2];
		temp[49]=text[34];
		temp[48]=text[27];
		temp[47]=text[59];
		temp[46]=text[19];
		temp[45]=text[51];
		temp[44]=text[11];
		temp[43]=text[43];
		temp[42]=text[3];
		temp[41]=text[35];
		temp[40]=text[28];
		temp[39]=text[60];
		temp[38]=text[20];
		temp[37]=text[52];
		temp[36]=text[12];
		temp[35]=text[44];
		temp[34]=text[4];
		temp[33]=text[36];
		temp[32]=text[29];
		temp[31]=text[61];
		temp[30]=text[21];
		temp[29]=text[53];
		temp[28]=text[13];
		temp[27]=text[45];
		temp[26]=text[5];
		temp[25]=text[37];
		temp[24]=text[30];
		temp[23]=text[62];
		temp[22]=text[22];
		temp[21]=text[54];
		temp[20]=text[14];
		temp[19]=text[46];
		temp[18]=text[6];
		temp[17]=text[38];
		temp[16]=text[31];
		temp[15]=text[63];
		temp[14]=text[23];
		temp[13]=text[55];
		temp[12]=text[15];
		temp[11]=text[47];
		temp[10]=text[7];
		temp[9]=text[39];
		temp[8]=text[32];
		temp[7]=text[64];
		temp[6]=text[24];
		temp[5]=text[56];
		temp[4]=text[16];
		temp[3]=text[48];
		temp[2]=text[8];
		temp[1]=text[40];	
	    	IP2 = temp;
		  end
	endfunction
  
	reg  [64:1] new_msg,newnew_msg;
	reg  [32:1] L[16:0], R[16:0];
	wire [48:1] key1, key2, key3, key4, key5, key6, key7, key8, key9, key10, key11, key12, key13, key14, key15, key16;
	reg  [48:1] Key1, Key2, Key3, Key4, Key5, Key6, Key7, Key8, Key9, Key10, Key11, Key12, Key13, Key14, Key15, Key16;
	wire [32:1] f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16;
	reg  [48:1] K[16:0];
	integer i;
	
	Key_Extension ke(key,key1, key2, key3, key4, key5, key6, key7, key8, key9, key10, key11, key12, key13, key14, key15, key16);

	always@(*)
	begin
		Key1<=key1;
		Key2<=key2;
		Key3<=key3;
		Key4<=key4;
		Key5<=key5;
		Key6<=key6;
		Key7<=key7;
		Key8<=key8;
		Key9<=key9;
		Key10<=key10;
		Key11<=key11;
		Key12<=key12;
		Key13<=key13;
		Key14<=key14;
		Key15<=key15;
		Key16<=key16;
	end


	ff ff1(clk,R[0],key1,f1);
	ff ff2(clk,R[1],key2,f2);
	ff ff3(clk,R[2],key3,f3);
	ff ff4(clk,R[3],key4,f4);
	ff ff5(clk,R[4],key5,f5);
	ff ff6(clk,R[5],key6,f6);
	ff ff7(clk,R[6],key7,f7);
	ff ff8(clk,R[7],key8,f8);
	ff ff9(clk,R[8],key9,f9);
	ff ff10(clk,R[9],key10,f10);
	ff ff11(clk,R[10],key11,f11);
	ff ff12(clk,R[11],key12,f12);
	ff ff13(clk,R[12],key13,f13);
	ff ff14(clk,R[13],key14,f14);
	ff ff15(clk,R[14],key15,f15);
	ff ff16(clk,R[15],key16,f16);


	always @(text)
	begin
	
		new_msg = IP1(text);
		{L[0], R[0]} = new_msg;
		#25	
		
		L[1]=R[0];
		R[1]=L[0] ^ f1;	
		
		#20
		L[2]=R[1];
		R[2]=L[1] ^ f2;
		
		#20
		L[3]=R[2];
		R[3]=L[2] ^ f3;
		
		#20
		L[4]=R[3];
		R[4]=L[3] ^ f4;	
		
		#25
		L[5]=R[4];
		R[5]=L[4] ^ f5;
		
		#25
		L[6]=R[5];
		R[6]=L[5] ^ f6;
		
		#25
		L[7]=R[6];
		R[7]=L[6] ^ f7;
		
		#20
		L[8]=R[7];
		R[8]=L[7] ^ f8;
		
		#25
		L[9]=R[8];
		R[9]=L[8] ^ f9;
		
		#25
		L[10]=R[9];
		R[10]=L[9] ^ f10;
		
		#25
		L[11]=R[10];
		R[11]=L[10] ^ f11;				
		
		#25
		L[12]=R[11];
		R[12]=L[11] ^ f12;
					
		#20
		L[13]=R[12];
		R[13]=L[12] ^ f13;
		
		#25
		L[14]=R[13];
		R[14]=L[13] ^ f14;
		
		#25
		L[15]=R[14];
		R[15]=L[14] ^ f15;
			
		#25
		L[16]=R[15];
		R[16]=L[15] ^ f16;
		
		newnew_msg = {R[16], L[16]};
		ciphertext[64:1] = IP2(newnew_msg);
	
	end


endmodule