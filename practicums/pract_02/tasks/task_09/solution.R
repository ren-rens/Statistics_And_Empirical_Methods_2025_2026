simulate.questions <- function() {
    x <- sample(c(0, 0, 0, 1), 10, replace=T) # wrong answers = 0, right = 1
    
    sum(x)
}

probability.questions <- function(Nreps) {
    res <- replicate(100000, simulate.questions())
    sum(res >= 5) / length(res)
}
probability.questions()
