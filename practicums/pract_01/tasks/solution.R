# 3
simulate.keys <- function() {
  keys <- c(1:4)
  x <- sample(keys, 4, replace = F)
  x[4] == 1
}
res <- replicate(100000, simulate.keys())
sum(res) / length(res)
