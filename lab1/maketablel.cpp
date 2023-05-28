#include<iostream>
#include<fstream>
#include"aes.h"

using namespace std;

void maketb() {
	int T_table[3][256];
	ofstream fout;

	fout.open("D:\\tencent\\ÃÜÂë¹¤³Ì\\table.txt");
	for (int i = 0; i < 3; i++) {
		for (int j = 0; j < 256; j++) {
			T_table[i][j] = Mul(i+1, j);
			fout << T_table[i][j]<<",";
		}
		fout << endl;
	}
	fout.close();
}