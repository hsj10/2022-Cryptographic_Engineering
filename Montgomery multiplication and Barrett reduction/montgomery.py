from random import randint

a=randint(2**2047,2**2048)#生成2048位随机数a
b=randint(2**2047,2**2048)#生成2048位随机数b

n=randint(2**1023,2**1024)#生成1024位随机奇数N
while(n%2==0):
    n = randint(2 ** 1023, 2 ** 1024)

k=1024#N是1024位奇数，故k=1024即可满足要求
r=2**k#R

a1=(a*r)%n#计算Montgomery form
b1=(b*r)%n
r1=pow(r,-1,n)#求逆
x=a1*b1

def reduction(x,r,n):
    n1=-pow(n,-1,r)#求逆
    m=(x*n1)%r#公式
    y=(x+m*n)>>k#右移k位
    if y>n:
        y=y-n
    return y

x1=reduction(x,r,n)
y=reduction(x1,r,n)

print((a*b)%n)#正常计算
print(y)#Montgomery
print((a*b)%n==y)#验证是否相等

