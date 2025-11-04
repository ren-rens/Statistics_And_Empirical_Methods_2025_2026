# 53
library(MASS)

getwd()
load("cereals.RData") # read the file
attach(cereals)

# carbo
hist(carbo)
boxplot(carbo, horizontal = T)
#    |       ----------
# min|------|    |     |--------|max 
#    |     Qn----Me---- Q3

mean(carbo)
mean(carbo, na.rm = T)
median(carbo, na.rm = T)
sd(carbo, na.rm = T) # startdart otklonenie

# sodium
hist(sodium)
boxplot(sodium, horizontal = T)
mean(sodium)
mean(sodium, na.rm = T)
median(sodium, na.rm = T)
sd(sodium, na.rm = T)

# potass
hist(potass)
boxplot(potass, horizontal = T)
mean(potass)
mean(potass, na.rm = T)
median(potass, na.rm = T)
sd(potass, na.rm = T)
