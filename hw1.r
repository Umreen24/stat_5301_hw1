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

# problem 12a
xvec <- c(116.6, 115.5, 114.5, 115.4, 115.9)
sort(xvec)
mean(xvec)

# sd 
ans1 <- xvec - mean(xvec)
ans1

# problem 12b
ans1 <- var(xvec)
ans1

ans2 <- sd(xvec)
ans2
round(ans2, 3)

# problem 12c
ans3 <- sum(xvec) # sum of all GPa
ans3

ans4 <- sum(xvec^2) # sum of all the squares of GPa
ans4

ans5 <- (66796.03 - (577.9^2)/5)/4 # sum of all squares minus square of all sums divived by n minus n - 1
ans5

# problem 12d 
ans1 <- xvec[1:5]
subtract = 100
ans2 <- ans1 -subtract 
ans2
sum(ans2)

ans3 <- ans2^2
ans3
ans4 <- sum(ans3)
ans4

ans5 <- (1216.03 - (77.9^2)/5)/4
ans5

# problem 13a
temp_data <- read.csv("hw1_13.csv")
temp_data

temp_data$Cooler
cooler <- median(temp_data$Cooler)
cooler


control <- median(temp_data$Control)
control
temp_data$Control
length(temp_data$Control)
control <- temp_data$Control[1:11]
control
median(control)

temp_data$Warmer
length(temp_data$Warmer)
warmer <- temp_data$Warmer[1:14]
warmer
median(warmer)

#problem 13b 
cooler_sd <- sd(temp_data$Cooler)
cooler_sd
round(cooler_sd, 3)

control <- temp_data$Control[1:11]
control
round(sd(control), 3)

warmer <- temp_data$Warmer[1:14]
warmer
round(sd(warmer), 3)

### transforming variables ###
cool <- temp_data$Cooler
cool

control <- temp_data$Control[1:11]
control

warmer <- temp_data$Warmer[1:14]
warmer

# problem 13d
# par can be used to set or query graphical parameters
par(mfrow = c(1,3))
boxplot(cool, col='blue')
boxplot(control, col='grey')
boxplot(warmer, col='red')

temp <- c(cool, control, warmer)
temp
length(temp)

# length of cool
length(cool)

# length of control 
length(control)

# length of warmer
length(warmer)

# building of vector labels 
labels <- c(rep('cooler', 15), rep('control', 11), rep('warmer', 14))
labels

# creating a data.frame 
pr13.dat <- data.frame(temp = temp, label = labels)
# see number of rows and columns within data.frame 
dim(pr13.dat)
pr13.dat$label <- factor(pr13.dat$label, levels=c('cooler','control','warmer'))  
# previous step lets us control the order of the boxplots; just go with it for now; too much to explain here!

# creating new boxplot with data.frame
boxplot(temp ~ label, data = pr13.dat, col = c('blue', 'grey', 'red'), horizontal = TRUE)

# fourth spread is the width of the box in the box plot 

# problem 14
data <- c(2.69, 2.55, 2.76, 3.87, 2.36, 2.75, 3.87, 4.28, 3.82, 4.27, 3.44, 4.60, 2.33, 3.60, 2.84, 3.65, 3.10)
data
sum(data)
sum(data^2)
var(data)
round(var(data), 4)
round(sd(data), 4)

# problem 15a
data <- c(86, 101, 130, 160, 180, 195, 133, 145, 214, 105, 145, 152, 153, 136, 87, 99, 95, 119, 129)
length(data)
round(var(data), 4)
round(sd(data), 4)

# problem 15b
svar = 1293.497/(60^2)
svar
round(svar, 4)

svar = 35.9652/60
svar
round(svar, 4)

# problem 18a
data <- c(28.4, 49.1, 30.6, 28.6, 28.6, 26.1, 33.2, 29.9, 23.2, 30.4)
data
data(max) - data(min)
max(data) - min(data)
var(data)
round(var(data), 4)
round(sd(data), 4)
length(data)

# problem 18d
ans3 <- sum(data) # sum of all GPa
ans3

ans4 <- sum(data^2) # sum of all the squares of GPa
ans4

ans5 <- (9929.51 - (308.1^2)/10)/9  # sum of all squares minus square of all sums divived by n minus n - 1
ans5
round(ans5, 4)

# problem 19a
data <- c(242,	186,	161,	186, 181,	176,	172,
          209,	207,	182,	209,	184,	190,	198)
data
length(data)
mean(data)
sum(data)
mean <- 308.1/length(data)
mean
median(data)

# problem 19b
data <- c(258,	186,	161,	186, 181,	176,	172,
          209,	207,	182,	209,	184,	190,	198)
data
mean(data)
round(192.7857, 4)
median(data)

# problem 19c
data <- c(242,	186,	161,	186, 181,	176,	172,
          209,	207,	182,	209,	184,	190,	198)
data
min(data)
max(data)
mean(data, trim=0.1)

sort(data)

# problem 20a
data <- c(  22.2, 40.4, 16.4, 72.8, 36.6, 108.2,  
            30.0, 4.4, 33.1, 66.7, 81.5)
data
median(data)
length(data)
quantile(data)
summary(data)
max(data) - min(data)
69.75 - 26.10
boxplot(data, horizontal = TRUE)
1.5 * 26.1 
round(1.5 * 26.1, 1)
69.75 - 1.5 
round(68.25, 1)
26.10 - 1.5
1.5 * 45.64
45.64 - 68.46
1.5 * 167.79
251.685 + 167.79
167.79 + (1.5*122.15)
26.10 - (1.5 * 43.65)
68.75 + (1.5 * 43.65)
round(134.225, 1)
26.10 + (1.5 * 43.65)
round(91.575, 1)
summary(data)
26.10 - (1.5 * 43.65)
26.10 - (3 * 43.65)
69.75 + (3 * 43.65)
data <- c(  22.2, 40.4, 16.4, 72.8, 36.6, 71.6,  
            30.0, 4.4, 33.1, 66.7, 81.5)
data
108.2 - 81.5
sort(data)
108.2 - 26.10

summary(data)
108.2 - 36.6

data <- c(  22.2, 40.4, 16.4, 72.8, 36.6, 108.2,  
            30.0, 4.4, 33.1, 66.7, 81.5)
data
summary(data)
108.2 - 81.5
108.2 - 43.25
108.2 - 69.75

# problem 22
data <- c(29, 30, 33, 40, 58, 67, 68, 69, 76, 81, 85, 95, 96, 96, 99, 106, 112, 127, 145, 150)
data
sd(data)
round(sd(data), 1)
mean(data)
83.1 - 35.4
