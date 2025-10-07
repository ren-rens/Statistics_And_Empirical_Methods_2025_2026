# 4
simulate.zad4 <- function() {
  questions <- c( rep(0, 3), rep(1,17))
  x <- sample(questions, 2, replace=F)
  sum(x) == 1
}
res <- replicate(100000, simulate.zad4())
sum(res) / length(res)
