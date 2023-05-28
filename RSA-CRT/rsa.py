p = random_prime(2^1024-1,lbound = 2^1023)
q = random_prime(2^1024-1,lbound = 2^1023)
n = p*q
phi = (p-1)*(q-1)
e = randint(1,phi)
while gcd(e,phi)!=1:
    e = randint(1,phi)

dp = inverse_mod(e,p-1)
dq = inverse_mod(e,q-1)
qinv = inverse_mod(q,p)

cipher = power_mod(m,e,n)

m1 = power_mod(c,dp,p)
m2 = power_mod(c,dq,q)
h = mod(qinv*mod(m1-m2,p),p)
m = m2+h*q

