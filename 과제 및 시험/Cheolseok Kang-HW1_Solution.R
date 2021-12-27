#######
## Q1
#######

x <- c(1,5,2,5,4,3,-1,2,1,1,7)
y <- c(4,1,3,2,1,5,-3,1,3,4,2)
# (1)
z <- y
z[z<3] <- 0
# (2)
v <- ifelse(x!=3, T, F)
# (3)
h <- rbind(x,y,v)


#######
## Q2
#######

set.seed(100) 
x = rnorm(50, mean=5, sd=3.5)

# (1)
MEAN <- sum(x)/length(x)
# (2)
sqrt(sum((x-MEAN)^2)/length(x))
# or
sqrt(sum((x-MEAN)^2)/(length(x)-1))
# (3)
index <- which(x < 0 | x > 8)
# (4)
x <- x[-index]
# (5)
matrix(x, nrow=4, ncol=10, byrow=T)


#######
## Q3
#######

set.seed(200)
x <- rt(30, df=3)

# (1)
sum((x^2-3*x^3)[5:30])
# (2)
prod((1/x+3/x^2)[1:10])
# (3)
y <- rnorm(30, 0, 1)
sqrt(sum((x-y)^2))

#######
## Q4
#######

M <- matrix(c(1,8,3,1,4,3,3,15,4,6,5,10,6,2,1,1,9,2,5,4,4,4,3,2,1), 5, 5)
# (1)
nrow(M); ncol(M)
# (2)
solve(M)%*%M; M%*%solve(M)
# (3)
rownames(M) <- c("r 1", "r 2", "r 3", "r 4", "r 5")
# (4)
M[2, M[5, ] >= 2 & M[5, ] <= 5]
# (5)
as.vector(M)
# (6)
N <- cbind(M[,-3], M[,3])
# (7)
apply(N, 2, mean)

