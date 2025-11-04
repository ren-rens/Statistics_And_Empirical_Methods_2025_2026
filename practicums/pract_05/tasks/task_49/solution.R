# 49
library(MASS)
data(survey) # data
?servey # description of data survey

# table of data
# survey - name of data
# $Exer - gives the frequency of occurance of data
table(survey$Exer)

attach(survey)
table(Exer)

# extras
sort(table(Exer), decreasing = T) # sorts the table
100 * table(Exer) / length(Exer) # in %

# graphic of data
barplot(table(Exer))
barplot(sort(table(Exer), decreasing = T))
barplot(100 * table(Exer) / length(Exer))

pie(table(Exer))
pie(table(Exer), col = c("pink", "light green", "purple"))
