# 55
library(MASS)
attach(survey)

my.summary <- function(x) {
    res <- c( median(x, na.rm = T), mean(x, na.rm = T), sd(x, na.rm = T) )
    names(res) <- c("Median", "Mean", "StDev")
    res
}

# A
my.summary(Pulse)

# B
my.summary(Pulse[Sex == "Female"])

# C
my.summary(Pulse[Age <= 25])

# D
my.summary(Pulse[Exer == "Freq"])

# E
