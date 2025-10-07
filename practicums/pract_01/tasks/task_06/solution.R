# 6
simulate.presents <- function(k) {
  # 1 2 3 4 5 ... 20 names
  # 4 1 3 7 5 ... 13 presents to
 
  x <- sample(c(1:k), k, replace = F)
  # x[i] - i ==? 0
  d <- x - c(1:k)
  any(d == 0)
}

probability.presents <- function(Nrep, k) {
  res <- replicate(Nrep, simulate.presents(k))
  sum(res) / length(res)
}
probability.presents(100000, 20)
