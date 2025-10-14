simulate.seats <- function() {
    # 0 -> passanger is not on time
    # 1 -> passanger is on time
    
    x <- sample(c(0, 1), 143, replace = T, prob = c(0.08, 0.92))
    sum(x)
}

res <- replicate(100000, simulate.seats())

# A
sum(res <= 138) / length(res)

# B
sum(res == 137) / length(res)
