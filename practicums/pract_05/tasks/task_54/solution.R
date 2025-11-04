# 54
library(MASS)
attach(survey)

boxplot(Pulse ~ W.Hnd)
boxplot(Pulse[W.Hnd == "Left"], Pulse[W.Hnd == "Right"])

mean(Pulse[W.Hnd == "Left"], na.rm = T)
mean(Pulse[W.Hnd == "Right"], na.rm = T)

median(Pulse[W.Hnd == "Left"], na.rm = T)
median(Pulse[W.Hnd == "Right"], na.rm = T)
