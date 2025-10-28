# 36
x <- rexp(200, 3)
plot.ecdf(x, do.points = F)

curve(pexp(x, 3), add = T, col = "green")
