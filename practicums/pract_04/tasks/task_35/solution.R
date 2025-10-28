# 35
n <- 200
# n <- 1000

x <- runif(n, 7, 9)
plot.ecdf(x, do.points = FALSE)

curve(punif(x, 7, 9), add = TRUE, lwd = 2, col = "purple")
