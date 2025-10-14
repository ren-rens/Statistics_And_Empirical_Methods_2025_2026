simulate.coins <- function() {
    coin <- sample(c("11", "11", "22", "12", "12"), 1) # which coin

    side = sample(c(1, 2), 1) # which side

    up <- substr(coin, start=side, stop=side)
    c(up, coin)
}

#A
probability.coinsA <- function(Nreps) {
    res <- replicate(Nreps, simulate.coins())
    sum(res[1,] == "1") / Nreps
}
probability.coinsA(100000)

# B
probability.coinsB <- function(Nreps) {
    res <- replicate(Nreps, simulate.coins())
    sum(res[2,] == "12" & res[1,] == "1") / sum(res[1,] == "1")
}
probability.coinsB(100000)
