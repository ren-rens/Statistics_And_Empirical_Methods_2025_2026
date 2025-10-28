# 37
x <- rnorm(200, 4, 1.2)
plot.ecdf(x, do.points = F)

curve(pnorm(x, 4, 1.2), add = T, col = "green")
