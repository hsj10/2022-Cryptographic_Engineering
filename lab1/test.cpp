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
	//cout << "���������룬���볤��Ϊ16���ַ�" << endl;
	//cin >> key;
	//cout << "���������ĳ��ȣ����ĳ���Ϊ16����" << endl;
	//cin >> len;
	//cout << "����������" << endl;
	//cin >> ptext;
	LARGE_INTEGER t1, t2, tc;
	QueryPerformanceFrequency(&tc);
	QueryPerformanceCounter(&t1);
	AES(key, ptext,len);

	QueryPerformanceCounter(&t2);
	double time = (double)(t2.QuadPart - t1.QuadPart) / (double)tc.QuadPart;
	cout << "time = " << time << endl;  //���ʱ�䣨��λ����

	deAES(key, ptext,len);
	return 0;

}