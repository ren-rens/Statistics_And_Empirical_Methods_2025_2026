# Task 20
# X = count of tries until success

# P(X <= 20)
# k = 20, r = 3
k = 20
r = 3
p = 1 / 6
pnbinom(k - r, r, p)
