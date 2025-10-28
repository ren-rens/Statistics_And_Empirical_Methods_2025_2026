#33
x2 <- rexp(500, 1 / 7)
hist(x2, probability = TRUE)
curve(dexp(x, 1 / 7), from = 0, to = max(x2), add = TRUE, lwd = 2)
