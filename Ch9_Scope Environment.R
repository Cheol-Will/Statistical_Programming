# Environment ---------------------------------
x <- 1
avg <- function(x){
  result <- sum(x)/length(x)
  return(result)
}
result

seq
seq <- function(x) x+x
seq


f <- function(y){
  a <- 3
  return(y+a)
}
a <- 2
f(a)
y
a

search()
library(ggplot2)
search()

d<-3; d
d()
c<-3; c
c()
c(1, 2, 3)

y<-10
f <- function(x){
  y <- 3
  return(g(x)+y)
}
g <- function(x){
  return(x*y)
}
f(3)

y <- 100
f <- function(x){
  y <- 10
  g <- function(x){
    return(x*y)
  }
  return(2+g(x))
}
f(2)

# exmaple1
x <- 5; y <- 3
f <- function(x){
  x + y
}
f(x)

# example 2
y <- 104
f <- function(x){
  y <- 7
  return(g(x))
}
g <- function(z){
  return(y + z)
}
f(4)

# example 3
y <- 100
f <- function(x){
  y <- 7
  g <- function(z){
    return(y+z)
  }
  return(g(x))
}
f(3)

# example 4
f <- function(x) apply(iris[,1:4], 2, mean) + x
f(1000)
search()

# example 5
pow <- function(n){
  po <- function(x) x^n
  return(po)
}
pow(10)

cube <- pow(3)
cube(4)
square <- pow(2)
square(4)
# every time we call a function, it has differnet environment

pow <- function(n){
  po <- function(x) x^n
  po
}
pow
environment(pow)
a <- pow(3)
environment(a)
square <- pow(2)
environment(square)
ls(environment(square))
get("n", environment(square))


x <- 1:10; y <- 1:5
lxy <- list(x = x, y = y)
f <- function(lxy){
  x <- lxy$x + 5; y <- lxy$y + 3; lxy <- list(x=x, y=y)
  return (lxy)
}
x; f(lxy)

f <- function (k) {
  k <<- k+3
  y <- 2*z # based on lexical scoping, z = 4
}
w <- 2
z <- 4
k
f(w)
k


f <- function(k){
  assign("k", k+3, pos = .GlobalEnv)
  z <- z*2
  return(k)
}
z <- 4
w <- 2
f(w)
k






