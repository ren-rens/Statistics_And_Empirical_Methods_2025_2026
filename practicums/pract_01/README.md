# Concepts and functions
* Initializing of vectors
```
n <- 5 # creates a vector of one element 5
v <- c(1, 2, 3, 4, 5) # creates a vector 1 2 3 4 5
v <- c(1:5) # creates a vector 1 2 3 4 5
logs <- vector("logical", length=5) # creates a vector of boolean values (FALSE FALSE FALSE FALSE FALSE)
```

* Indexing
```
v <- c(1, 2, 3, 4, 5)
v[1] # 1 will be printed
v[-4] # removes the element in index 4: 1 2 3 5
v[c(2, 3)] # 2 3
v[-c(2, 3)] # 1 4 5
v[v > 3] # 4 5
```

* functions
   + length
```
v <- c(1, 2, 3, 4, 5)
length(v) # returns the length of a vector (5)
```

 + sort
```
v <- c(10, 32, 47, 21)
sort(x) # 10 21 32 47
```

  + logical expresions functions
     * ifelse
```
ifelse(<logical expression>, <'yes' case result>, <'no' case result>)
```

```
any(logical expr) # returns TRUE if there is AR LEAST ONE TRUE value in the logical expr
```

```
all(<logical expr>) # returns TRUE if ALL values are TRUE in the logical expr
```

* Aggregating functions
```
v <- c(1, 5, 7, 4, 6)
min(v) # returns the min value: 1
max(v) # max value: 7
diff(v) # returns a vector of all diffs between 2 numbers: 4  2 -3  2
sum(v) # 23
cumsum(v) # returns a vector of all sums between all numbers until the number of the current position: 1 6 13 17 23
```

* Sequence generation
  +   rep: times/each
  ```
  rep(5, times=8) # 5 5 5 5 5 5 5 5
  rep(c(2, 6), times=5) # repeates the vector: 2 6 2 6 2 6 2 6 2 6
  rep(c(2, 6), each=5) # repeats the individual numbers of the vector: 2 2 2 2 2 6 6 6 6 6
  ```
  
  + seq
  ```
  seq(from=1, to=10, by = 2) # creates a sequence of numbers: 1 3 5 7 9
  seq(from=0, to=1, length.out=4) # 0.000 0.3333 0.666667 1.000
  ```
  
  + :
  ```
  10:16 # 10 11 12 13 14 15 16
  ```

* Matrix
```
M <- rbind(c(1, 2, 3, 4), c(5, 6, 7, 8)) # creates the matrix with rows the given vectors
M <- cbind(c(1, 2, 3, 4), c(5, 6, 7, 8)) # creates the matrix with cols the given vectors

M[c(3, 1), ] # prints the third and first row as a matrix
M[order(M[, 1])] # prints everything from the first column

M <- matrix(c(1:16), nrow=8, ncol=2)
M <- matrix(c(1:16), nrow=8, ncol=2, byrow=TRUE)

A <- matrix(c(1, 5, -3, 3.4, 0, -2), nrow=3, ncol=2)
rownames(M) <- c("row1", "row2", "row3")
colnames(M) <- c("col1", "col2")
```

* Sample function
```
sample(<vector>, <sample size>, replace=TRUE)
```
