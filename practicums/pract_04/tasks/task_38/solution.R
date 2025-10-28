# 38
par(mfrow = c(1, 3))
curve(dunif(x, 7, 9), from = 7, to = 9)
curve(punif(x, 7, 9), from = 5, to = 11)
curve(qunif(x, 7, 9), from = 0, to = 1) # reverse function
par(mfrow = c(1, 3))
