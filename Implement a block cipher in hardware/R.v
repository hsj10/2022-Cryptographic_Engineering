module R(input [32:1] aa,input [32:1] cc,input [32:1] kk,output [32:1] dout);

wire[32:1] temp1,temp2,temp;

assign #50 temp = aa+cc;//相加

assign temp1=temp<<kk;//移位

assign temp2=temp>>(32-kk);

assign dout=temp1|temp2;//异或

endmodule
