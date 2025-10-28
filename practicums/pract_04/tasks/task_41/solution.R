# 41
# X = juice in a rand bottle
# X ~ U(495, 502)

# A) P(X > 500) = 1 - P(X <= 500)
1 - punif(500, 495, 502)

# B)
# v = ? : P(X >= v) = 0.8
# P(X < v) = 0.2
qunif(0.2, 495, 502)
