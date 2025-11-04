# 50
library(MASS)
attach(survey)

table(Pulse)

pulse.interval <- cut(Pulse, breaks = seq(30, 110, 10))
# pulse.interval

table(pulse.interval)

# graphic
barplot(table(pulse.interval))

hist(Pulse)
hist(Pulse, breaks = seq(30, 110, 10))

# closest to the first tale is:
stripchart(Pulse, method = "stack", pch = 20)
stripchart(Pulse, method = "stack", pch = 18)
stripchart(Pulse, method = "stack", pch = 1)
stripchart(Pulse, method = "stack", pch = "*")
