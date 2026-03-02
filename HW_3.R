# Question 1
samp <- 1000
sampmean <- 100
stddev <- 100
score <- 1.96
conf_L <- sampmean - (score * (stddev/(sqrt(samp))))
conf_L
conf_U <- sampmean + (score * (stddev/(sqrt(samp))))
conf_U

# Question 2
# a.)
vec_1 <- seq(0,20, by <- 1)
vec_1
# b.)
vec_2 <- seq(1, 20, by <- 1)
vec_2
rev(vec_2)
# c.)
tmp <- c(4,6,3)
tmp
# d.)
rep(tmp, times <- 10)
# e.)
vec_3 <- c(rep(tmp[1], times <- 10), rep(tmp[2],times <- 20), rep(tmp[3],time <- 30))
vec_3
# f.)
vec_4 <- c(1:20)
vec_4
vec_5 <- rev(vec_4)
vec_5
vec_6 <- c(vec_4, vec_5)
vec_6

# Question 3
set.seed(50)  
xVec <- sample(0:999, 250, replace=T)  
xVec
yVec <- sample(0:999, 250, replace=T) 
yVec
# a.)
vec_7 <- yVec[2:length(yVec)] - xVec[1:(length(xVec)-1)]
vec_7
# b.)
vec_8 <- sin(xVec[1:length(yVec)-1])/cos(xVec[1:length(xVec)-1]) 
vec_8
# c.)
vec_9 <- xVec[1:(length(xVec) - 2)] + 2 * xVec[2:(length(xVec) - 1)] - xVec[3:length(xVec)]
vec_9
# d.)
vec_10 <- exp(-xVec[1:(length(xVec) + 1)]) / xVec[1:(length(xVec) + 10)]
vec_10

# Question 4 
# a.)
num_1 <- (yVec > 600)
num_1
# b.)
num_2 <- which(yVec > 600 )
num_2
# c.)
num_3 <- xVec[num_2]
num_3
# d.)
xmean <- mean(xVec)
vec_12 <- abs(xVec[1:length(xVec)] - xmean)
vec_12
# e.)
num_4 <- yVec[seq(length(yVec)-199, length(yVec))]
num_4
# f.)
num_5 = c()
for (i in yVec[1:length(yVec)]) {
  if (i %% 2 == 0) {
    num_5 <- c(num_5, i)
  }
}
num_5
# g.)
num_6 <- sort(yVec)
num_6
# h.)
num_7 <- yVec[seq(1, length(yVec), by = 3)]
num_7


