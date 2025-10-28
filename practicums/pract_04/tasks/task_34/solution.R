# 34
x <- rnorm(500, 0, 1) # generate 500 rand nums
hist(x, probability = TRUE)
curve(dnorm(x, 0, 1), add = TRUE, lwd = 2)
