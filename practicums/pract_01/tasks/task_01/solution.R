# 1
simulate.zad1 <- function() {
  x <- sample(c(1:8), 2, replace=TRUE)
  x[1] == x[2]
}
res <- replicate(100000, simulate.zad1())
sum(res) / length(res)
