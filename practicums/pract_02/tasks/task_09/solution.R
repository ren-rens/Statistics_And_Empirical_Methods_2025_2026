simulate.questions <- function() {
    x <- sample(c(0, 0, 0, 1), 10, replace=T) # wrong answers = 0, right = 1
    # x <- sample(c(0, 1), 10, replace=T, prob=c(0.75, 0.25)
    # giving probability of the answers also works

    sum(x)
}

probability.questions <- function(Nreps) {
    res <- replicate(100000, simulate.questions())
    sum(res >= 5) / length(res)
}
probability.questions()
