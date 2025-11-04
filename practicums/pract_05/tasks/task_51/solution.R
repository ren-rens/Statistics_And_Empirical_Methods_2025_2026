# 49
library(MASS)
attach(survey)

table(Age)

age.interval <- cut(Age, breaks = seq(15, 75, 10))
table(age.interval)

barplot(table(age.interval))
hist(Age)

stripchart(Age, method = "stack", pch = "*")
