# Task 23
# X = count of correct answers that Ivan gave
# X ~ Bi(n = 10, p = 1 / 4)

# P(X >= 5) = ?
# P (X >= 5) = 1 - P(X <= 4) 

n <- 10
p <- 1 / 4

1 - pbinom(4, n, p)
