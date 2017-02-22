#Credit Risk Course
##Introductory exercises 
###Exercise 1
a <- 2 + 3^4 - (1/2^3) + 3 * 5
b <- exp((2*(2+7)) / 3)
c <- log(3^2 - 1)
d <- exp(pi - 2) - 1
sum(a,b,c,d)

###Exercise 2
x <- seq(1,101,2)
y <- x + 1
z <- x^3

w <- union(x,y)
w <- sort(w)
wX <- w[1:(length(w) - 2)]

wX0 <- sapply(wX, function(x) ifelse(x < 80, x, 0))

###Exercise 3
dN <- rnorm(2000, 2, 3)
mean(dN)
sd(dN)
dN7 <- dN[dN > 7]
length(dN7)
length(dN7) / length(dN)

hist(dN7, col = 'red')
qplot(dN7, geom = 'histogram', fill = I('red'), main = "Outliers")

dNs <- sort(dN)
Q <- dNs[2000 - 2000 * 0.05]
Q2 <- quantile(dN, 0.95, type = 3) 
