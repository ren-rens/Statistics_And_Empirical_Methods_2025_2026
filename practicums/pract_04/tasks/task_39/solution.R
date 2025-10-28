# 39
par(mfrow = c(1, 3))
curve(dexp(x, 3), from = 0, to = 4)
curve(pexp(x, 3), from = 0, to = 4)
curve(qexp(x, 3), from = 0, to = 1)
