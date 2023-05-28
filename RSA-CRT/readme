当我们使用 RSA 私钥对密文 c 进行解密计算时，我们需要计算模幂 $m = c^d mod n$。然而这个计算量较大，因此可以考虑使用中国剩余定理简化计算过程。

由于 p 和 q 是常数，故可以先进行如下预计算
$$dp = d mod p − 1$$
$$dq = d mod q − 1$$
$$qinv = q$$
$$−1 mod p$$
经过预计算后，私钥变为 (p, q, d, dp, dq, qinv) 解密过程如下
m1 = c
dp mod p
m2 = c
dq mod q
h = qinv (m1 − m2) mod p
需要注意的是，当 m1 < m2 时，会使用以下算式计算
h = qinv [(m1 +
[
q
p
]
p
)
− m2
]
mod p
最后计算 m = m2 + hq mod p ∗ q 即可，计算规模比原本的计算方式小。
