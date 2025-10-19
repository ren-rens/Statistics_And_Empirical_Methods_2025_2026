###
# zad1

sim.balls1 <- function() {
  x <- sample( c(1:8), 2, replace=T )
  x[1]==x[2]
}

res <- replicate( 100000, sim.balls1() )
sum(res)/length(res)


###
# zad2

sim.socks <- function() {
  socks <- c(1,1,2,2,3,3)
  x <- sample( socks, 2, replace=F )
  x[1]==x[2]
}

prob.socks <- function(Nrep) {
  res <- replicate( Nrep, sim.socks() )
  sum(res)/length(res) 
}

prob.socks(100000)


###
# zad3

sim.keys <- function() {
  keys <- c(1:4)
  x <- sample( keys, 4, replace=F )
  x[4]==1  ## означаваме верният ключ с номер 1
}

prob.keys <- function(Nrep) {
  res <- replicate( Nrep, sim.keys() )
  sum(res)/length(res) 
}

prob.keys(100000)


###
# zad4

sim.exam <- function() {
  questions <- c( rep(0,3), rep(1,17) )
  x <- sample( questions, 2, replace=F )
  sum(x)==1
}

prob.exam <- function(Nrep) {
  res <- replicate( Nrep, sim.exam() )
  sum(res)/length(res)
}

prob.exam(100000)


###
# zad5

sim.bday <- function(k) {
  days <- c(1:365)
  x <- sample( days, k, replace=T )
  any( duplicated(x) )
}

prob.bday <- function(Nrep, k) {
  res <- replicate( Nrep, sim.bday(k) )
  sum(res)/length(res)
}

prob.bday(100000, 25)


###
# zad6

sim.gifts <- function(k) {
  x <- sample( c(1:k), k, replace=F )
  d <- x - c(1:k)
  any(d==0)
}

prob.gifts <- function(Nrep, k) {
  res <- replicate( Nrep, sim.gifts(k) )
  sum(res)/length(res)
}

prob.gifts(100000, 20)


###
# zad7

sim.ants <- function() {
  a1 <- sample( c(2,3), 1 )
  a2 <- sample( c(1,3), 1 )
  a3 <- sample( c(1,2), 1 ) 
  a <- c(a1,a2,a3)
  length( unique(a) ) == 3
  # any( duplicated(a) ) == F
  # all( c(1,2,3) %in% a )
}

prob.ants <- function(Nrep) {
  res <- replicate( Nrep, sim.ants() )
  sum(res)/length(res)
}

prob.ants(100000)


###
# zad8

sim.eggs <- function() {
  eggs <- c( rep("b", 2), rep("r", 6) )
  draws <- sample( eggs, 8, replace=F )
  player1 <- draws[seq(1,7,2)]
  player2 <- draws[seq(2,8,2)]
  b1 <- sum(player1=="b")
  b2 <- sum(player2=="b")
  c(b1, b2)
}

Nrep <- 100000
res <- replicate( Nrep, sim.eggs() )
res[,1:10]

# P(A)
( sum(res[1,]==2) + sum(res[2,]==2) ) / Nrep

# P(B)
sum(res[1,]==1) / Nrep
sum(res[2,]==1) / Nrep

# P(C)
sum(res[1,]==2) / Nrep

# P(D)
sum(res[2,]==2) / Nrep


###
# zad9

sim.test.ans <- function() {
  x <- sample( c(0,1), 10, replace=T, prob=c(0.75, 0.25) )
  sum(x)
}

res <- replicate( 100000, sim.test.ans() )
sum(res >= 5)/length(res)


###
# zad10

sim.airplane <- function() {
  x <- sample( c(0,1), 143, replace=T, prob=c(0.08, 0.92) )
  sum(x) 
}

res <- replicate( 100000, sim.airplane() )
# а)
sum(res <= 138)/length(res)
# б)
sum(res == 137)/length(res)


###
# zad11

# а)
sim.dice.ball.a <- function() {
  dice <- sample( c(1:6), 1 )
  if (dice==6) {
    ball <- sample( c("g", "g", "r", "r"), 1 )
  } else {
    ball <- sample( c("g", "r", "r", "r", "r"), 1 )
  }
  ball=="g"
}

Nrep <- 100000
res <- replicate( Nrep, sim.dice.ball.a() )
sum(res)/Nrep

# б)
sim.dice.ball.b <- function() {
  dice <- sample( c(1:6), 1 )
  if (dice==6) {
    ball <- sample( c("g", "g", "r", "r"), 1 )
  } else {
    ball <- sample( c("g", "r", "r", "r", "r"), 1 )
  }
  c(dice, ball)
}

res <- replicate( Nrep, sim.dice.ball.b() )
# б)
sum(res[1,]!="6" & res[2,]=="g") / sum(res[2,]=="g")
# а)
sum(res[2,]=="g") / Nrep


###
# zad12

# а)
sim.coins.a <- function() {
  coin <- sample( c(11, 11, 22, 12, 12), 1 )
  if (coin==12) {
    up <- sample( c(1,2), 1 )
  } else {
    if (coin==22) {
      up <- 2
    } else {
      up <- 1
    }
  }
  up==1
}

Nrep <- 100000
res <- replicate( Nrep, sim.coins.a() )
sum(res)/Nrep

# б)
sim.coins.b <- function() {
  coin <- sample( c("11", "11", "22", "12", "12"), 1 )
  side <- sample( c(1,2), 1 )
  up <- substr( coin, start=side, stop=side )
  c(up, coin)
}

res <- replicate( Nrep, sim.coins.b() )
# б)
sum(res[1,]=="1" & res[2,]=="12") / sum(res[1,]=="1")
# а)
sum(res[1,]=="1") / Nrep


###



