# Task 21
# X = count of new batteries from the chosen
# P(do not work) = 1 - P(X == 2)
# P(X == 2) = chosing 2 from the new batteries (5) and zero from the old (3) / choosing 2 from all batteries (8)
1 - choose(5, 2) *  choose(3, 0) / choose(8, 2)

k = 2
M = 5
N = 8
n = 2
1 - dhyper(k, M, N - M, n)

# P(X == 0) + P(X == 1)
dhyper(0, M, N - M, n) + dhyper(1, M, N - M, n)
