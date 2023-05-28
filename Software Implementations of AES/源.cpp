#include<iostream>
#include<vector>
#include<cstring>
#include<Windows.h>
#include<stdio.h>
#include<fstream>
using namespace std;

static const int S[16][16] = {
	0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
	0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,
	0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
	0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,
	0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,
	0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
	0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,
	0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,
	0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
	0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,
	0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
	0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
	0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,
	0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,
	0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
	0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16 };

static const int S2[16][16] = {
	0x52, 0x09, 0x6a, 0xd5, 0x30, 0x36, 0xa5, 0x38, 0xbf, 0x40, 0xa3, 0x9e, 0x81, 0xf3, 0xd7, 0xfb,
	0x7c, 0xe3, 0x39, 0x82, 0x9b, 0x2f, 0xff, 0x87, 0x34, 0x8e, 0x43, 0x44, 0xc4, 0xde, 0xe9, 0xcb,
	0x54, 0x7b, 0x94, 0x32, 0xa6, 0xc2, 0x23, 0x3d, 0xee, 0x4c, 0x95, 0x0b, 0x42, 0xfa, 0xc3, 0x4e,
	0x08, 0x2e, 0xa1, 0x66, 0x28, 0xd9, 0x24, 0xb2, 0x76, 0x5b, 0xa2, 0x49, 0x6d, 0x8b, 0xd1, 0x25,
	0x72, 0xf8, 0xf6, 0x64, 0x86, 0x68, 0x98, 0x16, 0xd4, 0xa4, 0x5c, 0xcc, 0x5d, 0x65, 0xb6, 0x92,
	0x6c, 0x70, 0x48, 0x50, 0xfd, 0xed, 0xb9, 0xda, 0x5e, 0x15, 0x46, 0x57, 0xa7, 0x8d, 0x9d, 0x84,
	0x90, 0xd8, 0xab, 0x00, 0x8c, 0xbc, 0xd3, 0x0a, 0xf7, 0xe4, 0x58, 0x05, 0xb8, 0xb3, 0x45, 0x06,
	0xd0, 0x2c, 0x1e, 0x8f, 0xca, 0x3f, 0x0f, 0x02, 0xc1, 0xaf, 0xbd, 0x03, 0x01, 0x13, 0x8a, 0x6b,
	0x3a, 0x91, 0x11, 0x41, 0x4f, 0x67, 0xdc, 0xea, 0x97, 0xf2, 0xcf, 0xce, 0xf0, 0xb4, 0xe6, 0x73,
	0x96, 0xac, 0x74, 0x22, 0xe7, 0xad, 0x35, 0x85, 0xe2, 0xf9, 0x37, 0xe8, 0x1c, 0x75, 0xdf, 0x6e,
	0x47, 0xf1, 0x1a, 0x71, 0x1d, 0x29, 0xc5, 0x89, 0x6f, 0xb7, 0x62, 0x0e, 0xaa, 0x18, 0xbe, 0x1b,
	0xfc, 0x56, 0x3e, 0x4b, 0xc6, 0xd2, 0x79, 0x20, 0x9a, 0xdb, 0xc0, 0xfe, 0x78, 0xcd, 0x5a, 0xf4,
	0x1f, 0xdd, 0xa8, 0x33, 0x88, 0x07, 0xc7, 0x31, 0xb1, 0x12, 0x10, 0x59, 0x27, 0x80, 0xec, 0x5f,
	0x60, 0x51, 0x7f, 0xa9, 0x19, 0xb5, 0x4a, 0x0d, 0x2d, 0xe5, 0x7a, 0x9f, 0x93, 0xc9, 0x9c, 0xef,
	0xa0, 0xe0, 0x3b, 0x4d, 0xae, 0x2a, 0xf5, 0xb0, 0xc8, 0xeb, 0xbb, 0x3c, 0x83, 0x53, 0x99, 0x61,
	0x17, 0x2b, 0x04, 0x7e, 0xba, 0x77, 0xd6, 0x26, 0xe1, 0x69, 0x14, 0x63, 0x55, 0x21, 0x0c, 0x7d };

static const int colM[4][4] = {
	2, 3, 1, 1,
	1, 2, 3, 1,
	1, 1, 2, 3,
	3, 1, 1, 2 };

static const int Rcon[10] = { 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1B, 0x36 };

static const int T_table[3][256] = {
	0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,
0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74,76,78,80,82,84,86,88,90,92,94,96,98,100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,168,170,172,174,176,178,180,182,184,186,188,190,192,194,196,198,200,202,204,206,208,210,212,214,216,218,220,222,224,226,228,230,232,234,236,238,240,242,244,246,248,250,252,254,27,25,31,29,19,17,23,21,11,9,15,13,3,1,7,5,59,57,63,61,51,49,55,53,43,41,47,45,35,33,39,37,91,89,95,93,83,81,87,85,75,73,79,77,67,65,71,69,123,121,127,125,115,113,119,117,107,105,111,109,99,97,103,101,155,153,159,157,147,145,151,149,139,137,143,141,131,129,135,133,187,185,191,189,179,177,183,181,171,169,175,173,163,161,167,165,219,217,223,221,211,209,215,213,203,201,207,205,195,193,199,197,251,249,255,253,243,241,247,245,235,233,239,237,227,225,231,229,
0,3,6,5,12,15,10,9,24,27,30,29,20,23,18,17,48,51,54,53,60,63,58,57,40,43,46,45,36,39,34,33,96,99,102,101,108,111,106,105,120,123,126,125,116,119,114,113,80,83,86,85,92,95,90,89,72,75,78,77,68,71,66,65,192,195,198,197,204,207,202,201,216,219,222,221,212,215,210,209,240,243,246,245,252,255,250,249,232,235,238,237,228,231,226,225,160,163,166,165,172,175,170,169,184,187,190,189,180,183,178,177,144,147,150,149,156,159,154,153,136,139,142,141,132,135,130,129,155,152,157,158,151,148,145,146,131,128,133,134,143,140,137,138,171,168,173,174,167,164,161,162,179,176,181,182,191,188,185,186,251,248,253,254,247,244,241,242,227,224,229,230,239,236,233,234,203,200,205,206,199,196,193,194,211,208,213,214,223,220,217,218,91,88,93,94,87,84,81,82,67,64,69,70,79,76,73,74,107,104,109,110,103,100,97,98,115,112,117,118,127,124,121,122,59,56,61,62,55,52,49,50,35,32,37,38,47,44,41,42,11,8,13,14,7,4,1,2,19,16,21,22,31,28,25,26,
};

void Byte_Change(int text[4][4]) {
	for (int i = 0; i < 4; i++) {
		for (int j = 0; j < 4; j++) {
			int row = (text[i][j] & 0x000000f0) >> 4;
			int col = (text[i][j] & 0x0000000f);
			text[i][j] = S[row][col];
		}
	}
}

void Left_Move(int row[4], int num) {
	int temp[4];
	for (int i = 0; i < 4; i++) {
		temp[i] = row[(i+num)%4];
	}
	for (int i = 0; i < 4; i++) {
		row[i] = temp[i];
	}
}

void Row_Shift(int text[4][4]) {
	Left_Move(text[1], 1);
	Left_Move(text[2], 2);
	Left_Move(text[3], 3);
}

int mixture2(int s) {
	int result = s << 1;
	int a7 = result & 0x00000100;
	if (a7 != 0) {
		result = result & 0x000000ff;
		result = result ^ 0x1b;
	}
	return result;
}

int mixture3(int s) {
	return mixture2(s) ^ s;
}
static int mixture4(int s) {
	return mixture2(mixture2(s));
}

static int mixture8(int s) {
	return mixture2(mixture4(s));
}

static int mixture9(int s) {
	return mixture8(s) ^ s;
}

static int mixture11(int s) {
	return mixture9(s) ^ mixture2(s);
}

static int mixture12(int s) {
	return mixture8(s) ^ mixture4(s);
}

static int mixture13(int s) {
	return mixture12(s) ^ s;
}

static int mixture14(int s) {
	return mixture12(s) ^ mixture2(s);
}
int Mul(int n, int s) {
	int result;

	if (n == 1)
		result = s;
	else if (n == 2)
		result = mixture2(s);
	else if (n == 3)
		result = mixture3(s);
	else if (n == 0x9)
		result = mixture9(s);
	else if (n == 0xb)//11
		result = mixture11(s);
	else if (n == 0xd)//13
		result = mixture13(s);
	else if (n == 0xe)//14
		result = mixture14(s);
	return result;
}


void Col_Mix(int col[4][4]) {
	int tempArray[4][4];

	for (int i = 0; i < 4; i++)
		for (int j = 0; j < 4; j++)
			tempArray[i][j] = col[i][j];

	for (int i = 0; i < 4; i++) {
		for (int j = 0; j < 4; j++) {
			col[i][j] = Mul(colM[i][0], tempArray[0][j])^ Mul(colM[i][1], tempArray[1][j]) ^ Mul(colM[i][2], tempArray[2][j]) ^ Mul(colM[i][3], tempArray[3][j]);
		}
	}
}

void col_mix(int col[4][4]) {
	int tempArray[4][4];

	for (int i = 0; i < 4; i++)
		for (int j = 0; j < 4; j++)
			tempArray[i][j] = col[i][j];
	for (int i = 0; i < 4; i++) {
		for (int j = 0; j < 4; j++) {
			col[i][j] = T_table[colM[i][0]-1][tempArray[0][j]] ^ T_table[colM[i][1]-1][tempArray[1][j]] ^ T_table[colM[i][2]-1][tempArray[2][j]] ^ T_table[colM[i][3]-1][tempArray[3][j]];
		}
	}
}

void Round_Key_Add(int text[4][4],int key[44][4],int rd) {
	for (int i = 0; i < 4; i++) {
		for (int j = 0; j < 4; j++) {
			text[j][i] = text[j][i] ^ key[4*rd+i][j];
			//cout << key[4 * rd + i][j]<<" "<<text[j][i]<<"|";
		}
		//cout << endl;
	}
	//cout << "----" << endl;
}

void Round_Key_Add1(int text[4][4], int rk[4][4]) {
	for (int i = 0; i < 4; i++) {
		for (int j = 0; j < 4; j++) {
			text[i][j] = text[i][j] ^ rk[i][j];
		}
	}
}

void Key_Extension(int ex[44][4], int key[4][4]) {
	//最开始的16个就是初始密钥
	for (int i = 0; i < 4; i++) 
		for (int j = 0; j < 4; j++) 
			ex[i][j] = key[i][j];
	
	for (int rd = 4; rd < 44; rd++) {
		if (rd % 4 == 0) {//轮数4的倍数时生成方法
			int temp[5];

			for (int j = 0; j < 4; j++) {
				temp[j] = ex[rd - 1][j];
			}//要用到rd-1轮的密钥

			Left_Move(temp, 1);//左移1位

			for (int j = 0; j < 4; j++) {//过S盒
				int row = (temp[j] & 0x000000f0) >> 4;
				int col = (temp[j] & 0x0000000f);
				temp[j] = S[row][col];
			}

			ex[rd][0] = temp[0] ^ ex[rd - 4][0] ^ Rcon[rd / 4 -1];//进行异或

			for (int j = 1; j < 4; j++) {
				ex[rd][j] = temp[j] ^ ex[rd - 4][j];
			}
		}
		else {
			for (int j = 0; j < 4; j++) {//轮数非4的倍数时的生成方法就是单纯异或
				ex[rd][j] = ex[rd - 4][j] ^ ex[rd - 1][j];
			}
		}
	}
}

void Key_Ragulate(char* key, int KEY[4][4]){
	for (int i = 0; i < 4; i++) {
		for (int j = 0; j < 4; j++) {
			key[i+j] = (int)key[j+i] & 0x000000ff;
			KEY[i][j] = key[i*4 + j];
		}
	}
}

int getIntFromChar(char c) {
	int result = (int)c;
	return result & 0x000000ff;
}

void PlaintxtConvert(char* p, int t[4][4]) {
	for (int i = 0; i < 4; i++) {
		for (int j = 0; j < 4; j++) {
			t[j][i] = getIntFromChar(p[4*i+j]);
		}
	}
}

void printASCII(char* str, int len) {
	int c;
	for (int i = 0; i < len; i++) {
		c = (int)*str++;
		c = c & 0x000000ff;
		printf("0x%x ", c);
	}
	printf("\n");
}

void outcp(char* str, int len) {
	int c;
	ofstream fout;
	fout.open("D:\\tencent\\密码工程\\cipher.txt", ios::out);
	for (int i = 0; i < len; i++) {
		c = (int)*str++;
		c = c & 0x000000ff;
		if (i % 16 == 0) {
			fout << endl << c << " ";
		}
		else {
			fout << c << " ";
		}
	}
	fout << endl;
	fout.close();
}

void outpl(char* str, int len) {
	int c;
	ofstream fout;
	fout.open("D:\\tencent\\密码工程\\plain.txt", ios::out);
	for (int i = 0; i < len; i++) {
		c = (int)*str++;
		c = c & 0x000000ff;
		if (i % 16 == 0) {
			fout << endl << (char)c << " ";
		}
		else {
			fout << (char)c << " ";
		}
	}
	fout << endl;
	fout.close();
}


void AES(char* key, char* ptext,int len) {
	char* temp = ptext;
	int text[4][4];
	int KEY[4][4];
	for (int i = 0; i < 4; i++) {
		for (int j = 0; j < 4; j++) {
			KEY[i][j] = getIntFromChar(key[i*4+j]);
		}
	}
	int ex[44][4];
	Key_Extension(ex, KEY);
	for (int k = 0; k < len ; k+=16) {
	
		PlaintxtConvert(ptext, text);
	
		Round_Key_Add(text, ex, 0);


		for (int i = 1; i < 10; i++) {
			Byte_Change(text);//字节代换

			Row_Shift(text);//行移位

			//Col_Mix(text);
		
			col_mix(text);//列混合
		
			Round_Key_Add(text, ex, i);
		
		}
	
		Byte_Change(text);//字节代换

		Row_Shift(text);//行移位

		Round_Key_Add(text, ex, 10);//列混合
		
		int m = 0;
		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 4; j++) {
				*ptext++ = (char)text[j][i];
				m++;
			}
		}
	}

	outcp(temp, len);
}

void Inv_Byte_Change(int text[4][4]) {
	for (int i = 0; i < 4; i++) {
		for (int j = 0; j < 4; j++) {
			int row = (text[i][j] & 0x000000f0) >> 4;
			int col = text[i][j] & 0x0000000f;
			text[i][j] = S2[row][col];
		}
	}
}

void Right_Move(int row[4], int num) {
	int temp[4];
	for (int i = 0; i < 4; i++) {
		temp[i] = row[(i - num+4) % 4];
	}
	for (int i = 0; i < 4; i++) {
		row[i] = temp[i];
	}
}

void Inv_Row_Shift(int text[4][4]) {
	Right_Move(text[1], 1);
	Right_Move(text[2], 2);
	Right_Move(text[3], 3);
}

static const int deColM[4][4] = { 0xe, 0xb, 0xd, 0x9,
	0x9, 0xe, 0xb, 0xd,
	0xd, 0x9, 0xe, 0xb,
	0xb, 0xd, 0x9, 0xe };

static void Inv_Col_mix(int array[4][4]) {
	int tempArray[4][4];

	for (int i = 0; i < 4; i++)
		for (int j = 0; j < 4; j++)
			tempArray[i][j] = array[i][j];

	for (int i = 0; i < 4; i++) {
		for (int j = 0; j < 4; j++) {
			//cout << array[0][j] <<" "<< array[1][j] << " "
				//<< array[2][j]<< " " << array[3][j] << endl;
			array[i][j] = Mul(deColM[i][0], tempArray[0][j]) ^ Mul(deColM[i][1], tempArray[1][j])
				^ Mul(deColM[i][2], tempArray[2][j]) ^ Mul(deColM[i][3], tempArray[3][j]);
			
		}
	}
	//cout << "----"<<endl;
}

void Get_Round_Key(int ex[44][4], int rk[4][4],int rd) {
	for (int i = 0; i < 4; i++) {
		for (int j = 0; j < 4; j++) {
			rk[i][j] = ex[4 * rd + j][i];
		}
	}
	Inv_Col_mix(rk);
}

void deAES(char* key, char* ptext,int len) {
	char* temp = ptext;
	int KEY[4][4];
	for (int i = 0; i < 4; i++) {
		for (int j = 0; j < 4; j++) {
			KEY[i][j] = getIntFromChar(key[i * 4 + j]);
		}
	}
	int ex[44][4];
	int text[4][4];
	Key_Extension(ex, KEY);
	int m = 0;
	for(int k = 0;k<len;k+=16){
		PlaintxtConvert(ptext, text);
		
		Round_Key_Add(text, ex, 10);
		

		int rk[4][4];
		for (int i = 9; i > 0; i--) {
			Inv_Byte_Change(text);//字节代换

			Inv_Row_Shift(text);//行移位

			Inv_Col_mix(text);//列混合

			Get_Round_Key(ex, rk, i);

			Round_Key_Add1(text, rk);

		}
		Inv_Byte_Change(text);//字节代换

		Inv_Row_Shift(text);//行移位

		Round_Key_Add(text, ex, 0);//列混合
		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 4; j++) {
				*ptext++ = (char)text[j][i];
				//cout << text[j][i] << " ";
			}
			//cout << endl;
		}
	}
	//printASCII(temp, len);
	outpl(temp, len);
}