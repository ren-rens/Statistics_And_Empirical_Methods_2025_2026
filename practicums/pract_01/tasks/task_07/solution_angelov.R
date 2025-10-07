simulate.ants.angelov <- function() {
  a1 <- sample(c(2,3), 1)
  a2 <- sample(c(1,3), 1)
  a3 <- sample(c(1,2), 1)
  a <- c(a1, a2, a3)
  length(unique(a)) == 3
}
probability.ants.angelov <- function(Nrep) {
  res <- replicate(100000, simulate.ants.angelov())
  sum(res) / length(res)
}
probability.ants.angelov(100000)
