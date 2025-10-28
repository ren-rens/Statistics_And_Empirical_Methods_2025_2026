# 43
# X = kilos of cheese per week
# X ~ N(mu = 41, sigma = 5)

# A) P(X > 51) = 1 - P(X <= 51)
1 - pnorm(51, 41, 5)

# B) P(45 < X < 50) = P(X < 50) - P(X < 45)
pnorm(50, 41, 5)  - pnorm(45, 41, 5)

# C) t = ? : P(X <= t) = 0.99
qnorm(0.99, 41, 5)

pnorm(52.63174, 41, 5) # = 0.99
