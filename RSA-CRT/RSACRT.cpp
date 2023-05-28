#include <iostream>
#include <NTL/ZZ.h>

using namespace NTL;

ZZ RSA_CRT(ZZ c,ZZ dp,ZZ dq,ZZ p,ZZ q,ZZ qinv) {
	ZZ m1 = PowerMod(c, dp, p);
	ZZ m2 = PowerMod(c, dq, q);
	if (m1 >= m2) {
		ZZ h = qinv * (m1 - m2) % p;
	}
	else {
		ZZ h = qinv((m1 + ceil(q / p) * p) - m2) % p;
	}
	ZZ m = m2 + h * q % (p * q);
	return m;
}

int main() {
	ZZ p, q, d, c, m;
	cin >> p >> q >> d >> c >> m;
	ZZ dp = d % (p - 1);
	ZZ dq = d % (q - 1);
	ZZ qinv = InvMod(q, p);
	ZZ res = RSA_CRT(c, dp, dq, p, q, qinv);
	cout << m==res << endl;
}