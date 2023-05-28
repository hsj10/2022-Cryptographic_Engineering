#include<iostream>
#include<stdio.h>
#include<Windows.h>
#include<fstream>
#include"aes.h"




using namespace std;


int main() {
	//maketb();
	//char ptext[1024];
	int len = 16;
	char key[17] = "1234567891234567";
	char ptext[17] = "1234567891234567";
	//char key[17];
	//cout << "请输入密码，密码长度为16个字符" << endl;
	//cin >> key;
	//cout << "请输入密文长度，密文长度为16倍数" << endl;
	//cin >> len;
	//cout << "请输入密文" << endl;
	//cin >> ptext;
	LARGE_INTEGER t1, t2, tc;
	QueryPerformanceFrequency(&tc);
	QueryPerformanceCounter(&t1);
	AES(key, ptext,len);

	QueryPerformanceCounter(&t2);
	double time = (double)(t2.QuadPart - t1.QuadPart) / (double)tc.QuadPart;
	cout << "time = " << time << endl;  //输出时间（单位：ｓ）

	deAES(key, ptext,len);
	return 0;

}