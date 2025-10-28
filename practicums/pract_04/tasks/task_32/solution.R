# 32
x1 <- runif(500, 3, 5) # generate 500 rand nums
hist(x1, probability = TRUE)  # plot histogram
curve(dunif(x, 3, 5), from = 3, to = 5, add = T, lwd = 2)

# curve(x^2 + 1, from = 0, to = 3)
