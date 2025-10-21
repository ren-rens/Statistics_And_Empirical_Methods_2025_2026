# Task 25

p <- 0.03
# A) there are no more than 10 batteries checked until a bad battery is found
# X = count of checked batteries until the finding of the first bad battery
# X ~ Ge(p = 0.03)
# P (X <= 10) 
k <- 10
pgeom(k - 1, p)

# B) there are 50 checked batteries and at least 2 of them are bad
# Y = count of bad batteries from 50
# Y ~ Bi(n = 50, p = 0.03)

# P(Y >= 2) = 1- P(Y <= 1)
n <- 50
k <- 1

1 - pbinom(k, n, p)
