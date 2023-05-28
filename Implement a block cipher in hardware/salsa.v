`timescale 1ns / 1ps


module core(input [512:1] init,input clk,output [512:1] out);

reg  [512:1] x;
wire [512:1] temp2;

wire[32:1] rout1,rout2,rout3,rout4,rout5,rout6,rout7,rout8,
		rout9,rout10,rout11,rout12,rout13,rout14,rout15,rout16,
		rout17,rout18,rout19,rout20,rout21,rout22,rout23,rout24,
		rout25,rout26,rout27,rout28,rout29,rout30,rout31,rout32;



always@(posedge clk)
begin
	#50
	x=init;
end

//initial #100 $monitor("%h",x);



R #100 r1(x[512:481],x[128:97],7,rout1);//4

R r2(x[384:353],x[512:481],9,rout2);
R r3(x[256:225],x[384:353],13,rout3);
R r4(x[128:97],x[256:225],18,rout4);


R r5(x[352:321],x[479:448],7,rout5);
R r6(x[223:192],x[352:321],9,rout6);
R r7(x[96:65],x[223:192],13,rout7);
R r8(x[480:449],x[96:65],18,rout8);

R r9(x[192:161],x[319:288],7,rout9);
R r10(x[64:33],x[192:161],9,rout10);
R r11(x[448:417],x[64:33],13,rout11);
R r12(x[320:289],x[448:417],18,rout12);

R r13(x[32:1],x[159:128],7,rout13);
R r14(x[416:385],x[32:1],9,rout14);
R r15(x[288:257],x[416:385],13,rout15);
R r16(x[160:129],x[288:257],18,rout16);

R r17(x[512:481],x[416:385],7,rout17);
R r18(x[480:449],x[512:481],9,rout18);
R r19(x[448:417],x[480:449],13,rout19);
R r20(x[416:385],x[448:417],18,rout20);

R r21(x[352:321],x[383:352],7,rout21);
R r22(x[320:289],x[352:321],9,rout22);
R r23(x[288:257],x[320:289],13,rout23);
R r24(x[384:353],x[288:257],18,rout24);

R r25(x[192:161],x[223:192],7,rout25);
R r26(x[160:129],x[192:161],9,rout26);
R r27(x[256:225],x[160:129],13,rout27);
R r28(x[224:193],x[256:225],18,rout28);

R r29(x[32:1],x[64:33],7,rout29);
R r30(x[128:97],x[32:1],9,rout30);
R r31(x[96:65],x[128:97],13,rout31);
R r32(x[64:33],x[96:65],18,rout32);


//assign temp2[384:353]=x[384:353]^rout1;

wire [32:1]test1,test2,test3,test4,test5,test6,test7,test8,
		test9,test10,test11,test12,test13,test14,test15,test16,
		test17,test18,test19,test20,test21,test22,test23,test24,
		test25,test26,test27,test28,test29,test30,test31,test32;
		
		
assign test1=x[384:353]^rout1;//4
assign test2=x[256:225]^rout2;//8
assign test3=x[128:97]^rout3;//12
assign test4=x[512:481]^rout4;//0
assign test5=x[224:193]^rout5;//9
assign test6=x[96:65]^rout6;//13
assign test7=x[480:449]^rout7;//1
assign test8=x[352:321]^rout8;//5
assign test9=x[64:33]^rout9;//14
assign test10=x[448:417]^rout10;//2
assign test11=x[320:289]^rout11;//6
assign test12=x[192:161]^rout12;//10
assign test13=x[416:385]^rout13;//3
assign test14=x[288:257]^rout14;//7
assign test15=x[160:129]^rout15;//11
assign test16=x[32:1]^rout16;//15


assign test17=test7^rout17;//1
assign test18=test10^rout18;//2
assign test19=test13^rout19;//3
assign test20=test4^rout20;//0
assign test21=test11^rout21;//6
assign test22=test14^rout22;//7
assign test23=test1^rout23;//4
assign test24=test8^rout24;//5
assign test25=test15^rout25;//11
assign test26=test2^rout26;//8
assign test27=test5^rout27;//9
assign test28=test12^rout28;//10
assign test29=test3^rout29;//12
assign test30=test6^rout30;//13
assign test31=test9^rout31;//14
assign test32=test16^rout32;//15


assign out[512:481]=test20;
assign out[480:449]=test17;
assign out[448:417]=test18;
assign out[416:385]=test19;
assign out[384:353]=test23;
assign out[352:321]=test24;
assign out[320:289]=test21;
assign out[288:257]=test22;
assign out[256:225]=test26;
assign out[224:193]=test27;
assign out[192:161]=test28;
assign out[160:129]=test25;
assign out[128:97]=test29;
assign out[96:65]=test30;
assign out[64:33]=test31;
assign out[32:1]=test32;

//initial #150 $monitor("%h",out);


endmodule


























