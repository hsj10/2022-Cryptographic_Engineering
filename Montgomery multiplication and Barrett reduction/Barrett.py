from random import randint

a=randint(2**2047,2**2048)
b=randint(2**2047,2**2048)

k=2048

m=2**(2*k)//b

q1=a>>(k-1)
q2=q1*m
q3=q2>>(k+1)

r1=a<<(2048-k)>>(2048-k)
r2=(q3*b)<<(2048-k)>>(2048-k)
r=r1-r2
if(r>b):
    r-=b

print(r)
print(a%b)
print(r==(a%b))
