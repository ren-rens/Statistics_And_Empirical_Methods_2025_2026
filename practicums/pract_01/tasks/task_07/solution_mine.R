# 7
simulate.ants <- function(k) {
  # k = 3 ants
  # what we want is to always have ants on each peak
  # peaks: 1 2 3
  # ants : 1 2 3
  x <- sample(c(1:k), k, replace = T) # we can duplicate peaks but that is not what we want
  x
  sum(x) == 6
  # or all(sort(x) == c(1:3))
}
  # sum 1 + 2 + 3
}
probability.ants <- function(Nrep, k) {
  res <- replicate(Nrep, simulate.ants(k))
  sum(res) / length(res)
}
probability.ants(100000, 3)
