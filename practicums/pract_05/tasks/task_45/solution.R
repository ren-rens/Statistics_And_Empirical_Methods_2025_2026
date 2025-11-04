# 45
f <- function(x) {
    exp(-x^2 / 2) * (1 / sqrt(2 * pi))
}

curve(f(x), from = 0.8, to = 4)

a <- 0.8
b <- 4
n <- 10^7 # points count
x <- runif(n, a, b)
y <- runif(n, 0, f(a))

# how many points are under the function f: (sum(y < f(x)) / n) 
(sum(y < f(x)) / n) * (b - a) * f(a)

# the interger is P(0.8 < x < 4), X ~ N(0,1)
pnorm(4) - pnorm(0.8) # real value of the integer
