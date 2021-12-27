# Function ------------------------------------
avg <- function(x)
{
  mean <- sum(x) / length(x)
  return(mean)
}
x <- 1:10; avg(x)


# Loops ---------------------------------------
x <- 1:10; z <- NULL
for (i in x) z <- c(z, i+3); z

z<-NULL
for (i in x){
  z <- c(z, i+3)
  if (i >= 5) break
}; z

# continue가 아니라 next!!!
z <- NULL
for (i in x) {if (i >= 5) next; z <- c(z, i+3)}
z
?next

x <- 0
while (x<5) x<- x+1; x

x <- 0
while (x<5){
  x <- x+1; if (x>3) break
}; x


x<-0
repeat {
  x <- x+1; if(x >= 5) break
}; x


# More about for() ----------------------------
x <- c("Introduction to Statistical Programming/data/data1.txt", "Introduction to Statistical Programming/data/data2.txt")
read.delim("Introduction to Statistical Programming/data/data1.txt")

library(readr)
data1 <- read_csv("Introduction to Statistical Programming/data/data1.txt")
View(data1)

z <- NULL
for (i in x) {y <- read.delim(i); z <- c(z, sum(y))}; z

r <- 3
if(r == 5){
  x <- 1
} else {
  x <- 3; y <- 5
}
x; y

x <- 1:5
y <- if(x[3] == 3) x else x+2; y
z <- if(sum(x) > 10) mean(x) else sd(x); z


# &&, || ------------------------------------ Boolean Operators for Scalar
x <- c(2, 4, 5); y <- c(1, 6, 3)
x > 3 & y < 2
x > 3 | y < 2
x > 3 && y < 2


# Logical values ------------------------------
x <- c(6, 2, 9, 4, 3)
sum(x >= 3)
table(x>= 3)
(x[1] > 0) + (x[2] > 1) * (x[3] < 10) * 2
(1<3) == T


# Default values for arguments function ------
avg <- function(x, na.rm = F){
  if (na.rm == T) x <- x[!is.na(x)]
  mean <- sum(x)/length(x)
  return (mean)
}
avg(c(1:5, NA))
avg(c(1:5, na.rm = T))





# ch 8
avg <- function(x){
  mean <- sum(x)/length(x)
  return(mean)
}
avg(1:5)

f1 <- function(x, y){
  return(x*y)
}
f2 <- function(x, y){
  return(x/y)
}
f1; f2
f <- f1; f
f(3,10); f(y = 3, x = 2)

g <- function(z, x, y){
  return(z(x,y))
}
g(f1, 4, 2)


f1 <- function(x) return(sin(x))
f2 <- function(x) return(sqrt(x))
f3 <- function(x) return(x^2-1)
plot(c(0,1), c(-1, 1.5), type = 'n', xlab=  "X", ylab = "Y")

for(f in c(f1, f2, f3)){
  plot(f, 0, 1, add = T) # evaluate f from 0 to 1
}

f_exp <- function(x) return(exp(x))
f_2 <- function(x) return (x^2)
for(f in c(f_exp, f_2)){
  plot(f, 0, 1, add = T)
}
plot()



















