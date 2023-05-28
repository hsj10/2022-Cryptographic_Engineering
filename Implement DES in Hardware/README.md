#可以使用如下命令测试

iverilog -o des.vvp Key_Extension.v Encrypt.v Test.v ff.v P.v sbox1.v sbox2.v sbox3.v sbox4.v sbox5.v sbox6.v sbox7.v sbox8.v

vvp -n des.vvp

（此时应该会输出一行VCD info: dumpfile wave.vcd opened for output.）

gtkwave wave.vcd