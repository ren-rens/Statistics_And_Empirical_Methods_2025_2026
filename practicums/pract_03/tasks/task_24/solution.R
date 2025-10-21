# Task 24
# X = count of passangers that come on time
# X ~ Bi(n = 143, p = 0.92)
n = 143
p = 0.92

# A) all passangers that came on time have seats
# P(X <= 138)
k = 138

pbinom(k, n, p)

# B) there is one empty seat
# P(X == 137)
k = 137
dbinom(k, n, p)
