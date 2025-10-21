# Task 18
# throwing a dice until we get a 6
# X = count of times until first success
# X ~ Ge(p = 1 / 6)

# A) throwing not more thsn 10 times
# P(x <= 10)
pgeom(10 - 1, 1 / 6)

# B) throwing at least 6 times
# P(x >= 6) = 1 - P(x <= 5) 
1 - pgeom(5 - 1, 1 / 6)
