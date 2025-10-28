# 42
# X = Years until a washing machine breaks
# X ~ Exp(1 / 4)

# A) P(X > 3) = 1 - P(X <= 3)
1 - pexp(3, 1 / 4)

# B) P(X <= 2)
pexp(2, 1 / 4)

# C) worked for 3 years without breaking
# what is P that it will for for 3 more years without breaking
# P( X > 6 | X > 3) = P(X > 6 & X > 3) / P(X > 3) = P(X > 6) / P(X > 3)
# = (1 - P(X <= 6)) / (1 - P(X <= 3))
# 1 2 (3 4 5 (6 7 
(1 - pexp(6, 1 / 4)) / (1 - pexp(3, 1 / 4))

# D) 𝑡 = ? : P(𝑋 ≤ 𝑡) = 0.90
# P(X <= t) = 0.9
qexp(0.9, 1 / 4)

pexp(9.21034, 1 / 4) # has to be 0.9
