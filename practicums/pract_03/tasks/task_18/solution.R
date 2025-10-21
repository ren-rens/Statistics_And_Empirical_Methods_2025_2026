# Task 18
# X = count 6 when throwing a dice 10 times
# X ~ Bi(n = 10, p = 1/6)

# A) exactly two 6
# P(x == 2)
dbinom(2, 10, 1 / 6)
choose(10, 2) * (1 / 6)^2 * (5 / 6)^8

# B) not more than two 6 (0, 1 or 2)
# P(x <= 2)
pbinom(2, 10, 1 / 6)
# P(x <= 2) = P(x == 0) + P(x == 1) + P(x == 2)
dbinom(0, 10, 1 / 6) + dbinom(1, 10, 1 / 6) + dbinom(2, 10, 1 / 6)
sum(dbinom(0:2, 10, 1 / 6))

# C) two or more 6
# P(x >= 2) = P(x == 2) + P(x == 3) + P(x == 4) + ... + P(x == 10)
sum(dbinom(2:10, 10, 1 / 6))
1 - pbinom(1, 10, 1 / 6)

# D) between three and eight 6s
# P( 3 <= x <= 8) = P(x <= 8) - P(x <= 2)
sum(dbinom(3:8, 10, 1 / 6))
pbinom(8, 10, 1 / 6) - pbinom(2, 10, 1 / 6)
