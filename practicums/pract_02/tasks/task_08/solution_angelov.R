simulate.eggs.angelov <- function() {
    eggs <- c(rep("r", 6), rep("b", 2))
    # r->raw eggs, b->boiled eggs
    draws <- sample(eggs, 8, replace=T) # permutation of all eggs

    player1 <- draws[seq(1, 7, 2)] # 1 3 5 7
    player2 <- draws[seq(2, 8, 2)] # 2 4 6 8

    b1 <- sum(player1 == "b")
    b2 <- sum(player2 == "b")
    c(b1, b2)
}
Nreps <- 1000000
res <- replicate(Nreps, simulate.eggs.angelov())

# P(A) Angelov
(sum(res[1,]) == 2) + (sum(res[2,]) == 2) / Nreps

# P(B) Angelov
(sum(res[1,]) == 1) / Nreps
1 - (sum(res[1,]) == 2) + (sum(res[2,]) == 2) / Nreps

#P(C) Angelov
(sum(res[1,]) == 2) / Nreps

#P(D) Angelov
(sum(res[2,]) == 2) / Nreps
