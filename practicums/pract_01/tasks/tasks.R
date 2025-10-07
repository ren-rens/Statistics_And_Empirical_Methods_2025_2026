# 1
simulate.balls <- function() {
  x <- sample(c(1:8), 2, replace=TRUE)
  x[1] == x[2]
}
res <- replicate(100000, simulate.balls())
sum(res) / length(res)

# 2
simulate.socks <- function() {
  socks <- c(1,1, 2, 2, 3, 3)
  x <- sample(socks, 2, replace = FALSE)
  x[1] == x[2]
}
res <- replicate(100000, simulate.socks())
sum(res) / length(res)

# 3
simulate.keys <- function() {
  keys <- c(1:4)
  x <- sample(keys, 4, replace = F)
  x[4] == 1
}
res <- replicate(100000, simulate.keys())
sum(res) / length(res)

# 4
simulate.zad4 <- function() {
  questions <- c( rep(0, 3), rep(1,17))
  x <- sample(questions, 2, replace=F)
  sum(x) == 1
}
res <- replicate(100000, simulate.zad4())
sum(res) / length(res)

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
