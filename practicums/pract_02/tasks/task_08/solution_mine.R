# A = {one player with 2 boiled eggs}
simulate.eggsA <- function() {
    eggs <- c(rep("r", 6), rep("b", 2))
    # r->raw eggs, b->boiled eggs
    draws <- sample(eggs, 8, replace=T) # permutation of all eggs

    player1 <- draws[seq(1, 7, 2)] # 1 3 5 7
    player2 <- draws[seq(2, 8, 2)] # 2 4 6 8

    b1 <- sum(player1 == "b")
    b2 <- sum(player2 == "b")
    
    b1 == 2 || b2 == 2
}

probability.eggsA <- function(Nreps) {
    res <- replicate(100000, simulate.eggsA())
    sum(res) / length(res)
}
probability.eggsA()

# B = {one boiled egg for each player}
simulate.eggsB <- function() {
    eggs <- c(rep("r", 6), rep("b", 2))
    # r->raw eggs, b->boiled eggs
    draws <- sample(eggs, 8, replace=T) # permutation of all eggs

    player1 <- draws[seq(1, 7, 2)] # 1 3 5 7
    player2 <- draws[seq(2, 8, 2)] # 2 4 6 8

    b1 <- sum(player1 == "b")
    b2 <- sum(player2 == "b")
    
    b1 == 1 && b2 == 1
}

probability.eggsB <- function(Nreps) {
    res <- replicate(100000, simulate.eggsB())
    sum(res) / length(res)
}
probability.eggsB()

# C = {2 boilded eggs for the first player}
simulate.eggsC <- function() {
    eggs <- c(rep("r", 6), rep("b", 2))
    # r->raw eggs, b->boiled eggs
    draws <- sample(eggs, 8, replace=T) # permutation of all eggs

    player1 <- draws[seq(1, 7, 2)] # 1 3 5 7
    player2 <- draws[seq(2, 8, 2)] # 2 4 6 8

    b1 <- sum(player1 == "b")
    b2 <- sum(player2 == "b")
    
    b1 == 2
}

probability.eggsC <- function(Nreps) {
    res <- replicate(100000, simulate.eggsC())
    sum(res) / length(res)
}
probability.eggsC()

# D = {2 boiled eggs for the second player}
simulate.eggsD <- function() {
    eggs <- c(rep("r", 6), rep("b", 2))
    # r->raw eggs, b->boiled eggs
    draws <- sample(eggs, 8, replace=T) # permutation of all eggs

    player1 <- draws[seq(1, 7, 2)] # 1 3 5 7
    player2 <- draws[seq(2, 8, 2)] # 2 4 6 8

    b1 <- sum(player1 == "b")
    b2 <- sum(player2 == "b")
    
    b1 == 0 || b2 == 2
}

probability.eggsD <- function(Nreps) {
    res <- replicate(100000, simulate.eggsD())
    sum(res) / length(res)
}
probability.eggsD()
