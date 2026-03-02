## Question 1
# a.)
xVec <- c(1,2,3,4,5)
tmpFn1 <- function(xVec){
  n <- length(xVec)
  result <- numeric(n)
  for(i in 1:n){
    if(i == 1){
      result[i] <- xVec[i]
    } else{
      result[i] <- xVec[i]^2
    }
  }
  return(result)
} 
tmpFn2 <- function(xVec){
  n <-length(xVec)
  result <- numeric(n)
  for (i in 1:n){
    if(i == 1){
      result[i] <- xVec[i]
    }else{
      result[i] <- xVec[i] ^ 2 / i
    }
  }
  return(result)
}
result_1 <- tmpFn1(xVec)
result_1
result_2 <- tmpFn2(xVec)
result_2
# b.)
x <- 5
n <- 10
tmpFn3 <- function(x, n){
  result <- 1
  for (i in 1:n){
    result <- result + (x^i)
  }
  return(result)
}
result_3 <- tmpFn3(x, n)
result_3

## Question 2
xVec <- c(-3, 3)
tmpFn <- function(xVec) {
  f <- integer(length(c(xVec)))
  for (i in seq_along(xVec)) {
    if (xVec[i] < 0) {
      f[i] <- xVec[i] * xVec[i] + 2 * xVec[i] + 3
    } else if (xVec[i] >= 0 && xVec[i] <= 2) {
      f[i] <- xVec[i] + 3
    } else {
      f[i] <- xVec[i] * xVec[i] + 4 * xVec[i] - 7
    }
  }
  return(f)
}
plot(xVec, tmpFn(xVec))


## Question 3
matrix_ <- matrix(1:9, nrow = 3,ncol= 3)
matrix_
matrix_func <- function(matrix_) {
  for (i in seq_len(nrow(mat))) {
    for (j in seq_len(ncol(mat))) {
      if (mat[i, j] %% 2 != 0) {
        mat[i, j] <- mat[i, j] * 2
      }
    }
  }
  return(mat)
}
result_4 <- matrix_func(mat)
result_4

## Question 4
# a.)
tsEwma <- function(tsDat, m0 = 0, delta = 0.7){
  n <-length(tsDat)
  m <- vector("numeric", length = n)
  m[1] <- m0
  for (i in 2:n){
  et <- tsDat[t]- m[i-1]
  m[i] <- m[i-1] + (1 - delta) * et
  }
  result_5 <- ts(m, start = start(tsDat), frequency = frequency(tsDat))
  result_5
}
# b.)
tsEwma <- function(tsDat, m0 = 0, delta  = 0.7){ 
  n <- length(tsDat)
  et <- c(0, diff(tsDat))
  m <- m0 + 91 - delta * cumsum(et)
  result_6 <- ts(m, start = start(tsDat), frequency = frequency(tsDat))
  result_6
}
# using system.time
datVec <- c(23, 12, 14, 15, 17)
tsData <-ts(datVec, start = c(1960, 3), frequency = 12) 
time_1 <- system.time(tsEwma(tsData,m0 = 0, delta = 0.7))
time_1
time_2 <- system.time(tsEwma(tsData, m0 = 0, delta = 0.7))
time_2
