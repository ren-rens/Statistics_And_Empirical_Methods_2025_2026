# Task 22
# one error per 500 words
# one page has 300 words
# X = errors per 5 pages (1500 words)
# X ~ Bi(n = 1500, p = 1 / 500)
p <- 1 / 500
n <- 1500

# A) not more than 2 error per 5 pages
# P(X <= 2)
k = 2
pbinom(k, n, p)

# ~=
ppois(2, n * p)

# B) 1 to 3 errors per 5 pages
# P(1 <= X <= 3) = P(X <= 3) - P(X <= 0)
pbinom(3, n, p) - pbinom(0, n, p)
ppois(3, n * p) - ppois(0, n * p)


# P(1 <= X <= 3) = sum(dbinom(1:3, n, p)
k <- 1:3
sum(dbinom(k, n, p))

