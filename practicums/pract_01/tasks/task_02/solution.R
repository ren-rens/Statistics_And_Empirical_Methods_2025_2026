# 2
simulate.socks <- function() {
  socks <- c(1,1, 2, 2, 3, 3)
  x <- sample(socks, 2, replace = FALSE)
  x[1] == x[2]
}
res <- replicate(100000, simulate.socks())
sum(res) / length(res)
