# 5
simulate.birthdays <- function(k) {
  days <- c(1:365)
  x <- sample(days, k, replace = T)
  any(duplicated(x))
}
probability.birthdays <- function(Nrep, k) {
  res <- replicate(Nrep, simulate.birthdays(k))
  sum(res) / length(res)
}
probability.birthdays(100000, 25)
