# problem 7a
xvec <- c(5,15,26,35,23,13,7,1,3,1)
xvec
sum(xvec[1:4])
sum(xvec)
sum(xvec[1:4]/sum(xvec))
xvecquot <- sum(xvec[1:4]/sum(xvec))
xvecquot
round(xvecquot, 3)

# problem 7b
xvec <- c(5,15,26,35,23,13,7,1,3,1)
xvec
sum(xvec[7:10])
sum(xvec)
ans <- sum(xvec[7:10]/sum(xvec))
round(ans, 3)

# problem 7c
xdata <- c(rep(3,xvec[1]), rep(3.5,xvec[2]), rep(4,xvec[3]), rep(4.5,xvec[4]), rep(5,xvec[5]), rep(5.5,xvec[6]), 
           rep(6,xvec[7]), rep(6.5,xvec[8]), rep(7,xvec[9]), rep(7.5,xvec[10])) 
xdata  # display xdata so we can see what we did
hist(xdata)

# problem 7d
library(repr) # loading the library that let's us control plot size
options(repr.plot.width=5, repr.plot.height=4) # specifying the plot size we want
hist(xdata, probability = T)

# problem 8
vec <- c(6.5, 7.9, 9.2, 10.0, 10.7, 12.0, 12.5, 14.5, 14.9, 21.9)
vec
mean(vec)
median(vec)

# problem 9
xvec <- .001 * c(720, 841, 869, 902, 924, 936, 980, 1008, 1038, 1046, 1084, 1113, 1134, 1152, 1262, 1037)
xvec # make sure my xvec is right!
ansmean <- mean(xvec)
round(ansmean, 4)
ansmedian <- median(xvec)
round(ansmedian, 4)
# problem 9b
sort(xvec)
length(xvec)
sort(xvec)[8:9]
median(xvec)

x <- c(1.038)
x

1.350 - 1.038

# problem 10a
x <- c("F", "F", "S", "S", "F", "F", "S", "S", "F", "F")
x
x == "S"
sum(x == "S")
ans <- sum(x == "S")/length(x)
ans

# problem 10b 
x <- c(0, 0, 1, 1, 0, 0, 1, 1, 0, 0)
x
mean(x)

# problem 10c
table(x)
0.72 * 25

# problem 11a
xvec <- c(180.6, 181.7, 180.9, 181.5, 182.5, 181.7, 181.4, 182.1, 182.1, 180.2, 181.8, 180.4)
xvec
max(xvec) - min(xvec)
var(xvec)
sd(xvec)
sum(xvec^2)
length(xvec)*mean(xvec)^2
sort(xvec)
sum(xvec) # sum of all observations
sum(xvec^2) # sum of of squares of observations
s <- 394913.7 - 2176.9^2/12
s
ans <- s^2/12-1
ans
