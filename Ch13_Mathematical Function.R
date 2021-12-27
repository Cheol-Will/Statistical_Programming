x <- sample(1:10, 5); x
# Basic

which.max(x)
which.min(x)
sum(x); prod(x)
cumsum(x)
prod(x)
factorial(x)

# Calculus
y <- D(expression(exp(x^2)), 'x'); y
x <- c(1, 1.2, 2)
eval(y)
D(expression(x^2), 'x')
?D
?eval

f <- function(x) 2*x^2
integrate(f, 0, 1)


# Distribution
x <- dunif(x = 1.5, min = 0, max = 10); x



x <- rexp(2000, rate = 2); mean(x)
hist(x, freq = F, ylim = c(0, 2), breaks = 20)
lines(density(x), col = "red", lty = 2, lwd = 2)
legend(1.5,2,c('Estimated density','Theoretical density'),
       col=c('red','blue'),lty=c(2,1),lwd=c(2,2))


pexp(1, rate = 2)
qexp(0.5, rate = 2)
 

x <- rbinom(500, 10, 0.3)
mean(x)
var(x)

dbinom(2, 10, 0.3)
pbinom(2, 10, 0.3)
qbinom(0.5, 10, 0.3)
qbinom(0.5, 1000, 0.84)

rnorm(100, mean = 3, sd = 1)
rt(100, df = 10)
dchisq(10, 20)




x <- 1:5; y <- 3:7; union(x, y)
intersect(x, y)
setdiff(x,y)
setequal(x, y)

# Is 3 in y?
3 %in% y
x <- 1:4; 3 %in% x

# combination ( choose ) 
choose(10, 3)
# show subsets in combination
combn(x = letters[1:5], m = 3)



# Buffon's Needle Problem
buffon <- function(n, L){
  d <- runif(n, 0, L/2)
  theta <- runif(n, 0, pi)
  x <- (L/2) * sin(theta)
  p <- sum(d <= x)/n
  
  return(p)
}

# why this return is different with buffon 1  
buffon2 <- function(n, L){
  d <- seq(0, L/2, length.out = n)
  theta <- seq(0, pi, length.out = n)
  x <- (L/2) * sin(theta)
  p <- sum(d <= x)/n
  
  return(p)
}


buffon(1000, 1)
buffon(100000, 10)
buffon(1000000, 1)
buffon2(100000, 1)


# confidence interval
cfv <- function(n, R = 100, mu = 0, sd = 1, alpha = 0.05){
  B <- 5*sd/sqrt(n)
  K <- 0
  plot(c(0,R+1), c(mu,mu), type='l', col='blue',
       lwd=2, ylim=c(mu-B,mu+B), xlab='Repetition', 
       ylab='Confidence Interval', main='Simulation')
  
  for(i in 1:R){
    x <- rnorm(n, mean = mu, sd = sd)
    LB <- mean(x) + qt(alpha/2, n-1) * sd(x) / sqrt(n)
    UB <- mean(x) + qt(1-alpha/2, n-1) * sd(x) / sqrt(n)
    if(LB > mu | UB < mu) lines(c(i, i), c(LB, UB), col = 'red', lwd = 2)
    else{
      lines(c(i, i), c(LB, UB))
      K = K + 1;
      Sys.sleep(0.1)
    }
  }
  sprintf("Coverage Probability: %.3f", K/R)
}
cfv(n = 10, R = 100)

compute.pi <- function(r){
  x <- runif(r)
  y <- runif(r)
  z <- x^2 + y^2 <= 1
  return(4*sum(z)/r)
}
compute.pi(5000000)

com.pi <- function(r){
  plot(c(0,r),c(pi,pi),type='l',xlim=c(1,r),
       ylim=c(0,5),xlab='R',ylab='pihat',col='red')
  m = 0
  old.pi = 0
  for (i in 1:r)
  {
    x = runif(2)
    if((x[1]^2 + x[2]^2) <= 1) m = m + 1
    new.pi = 4*m/i
    lines(c(i-1,i),c(old.pi,new.pi),lwd=2,col='blue')
    old.pi = new.pi
    Sys.sleep(0.02)
  }
  return(4*m/r)
}
com.pi(1000)

















