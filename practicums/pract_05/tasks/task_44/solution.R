# 44

n <- 100000
x <- runif(n, -1, 1)
y <- runif(n, -1, 1)

# circle expression x^2 + y^2
# the points in the circle x^2 + y^2< 1

4 * sum(x^2 + y^2 < 1) / n # that is pi

# picture
plot(x, y, pch="", col="gray")
curve(sqrt(1 - x^2), from = -1, to = 1, add = T, col = "red")
curve(-sqrt(1 - x^2), from = -1, to = 1, add = T, col = "red")
