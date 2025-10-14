# A
simulate.dice.ballsA <- function() {
    dice <- sample(c(1:6), 1)
    
    if (dice == 6) {
        # first box: 2 red and 2 green
        ball <- sample(c('g', 'g', 'r', 'r'), 1)
    }
    else {
        ball <- sample(c('g', 'r', 'r', 'r', 'r'), 1)
    }
    
    ball == 'g'
}

probability.dice.ballsA <- function() {
    res <- replicate(100000, simulate.dice.ballsA())
    sum(res) / length(res)
}
probability.dice.ballsA()

# B
# A = {get ball from second box} = {dice not 6}
# B = {getting a green ball}
# def: P(A|B) = P(A&B) / P(B) = Cn(A&B) / Cn(B)
# Cn(B) = how many times B happens for n reps
simulate.dice.ballsB <- function() {
    dice <- sample(c(1:6), 1)

    if (dice == 6) {
        # first box: 2 red and 2 green
        ball <- sample(c('g', 'g', 'r', 'r'), 1)
    }
    else {
        ball <- sample(c('g', 'r', 'r', 'r', 'r'), 1)
    }
        
    c(dice, ball)
}

probability.dice.ballsB <- function() {
    res <- replicate(100000, simulate.dice.ballsB())
    sum(res[1,] != "6" & res[2,] == 'g') / sum(res[2,] == 'g')
}
probability.dice.ballsB()
