## Q1

set.seed(1)
x <- rnorm(100, 0, 1)
M <- cbind(matrix(x[1:80], nrow=10, ncol=8, byrow=TRUE), matrix(x[81:100], nrow=10, ncol=2))
sum((M*t(M))[10, 1:4])

N <- rbind(M[,1:8], t(M[,9:10])[,1:8])
H <- list()
H$M <- dim(M)
H$N <- dim(N)
H$name <- c("Kim", "Choi", "Park", "Lee")

H$N[2] <- NA
  
## Q2
x = data.frame(a=c("v","w","w","v","v"), b=c(2,8,4,10,6), c=c("a","b","c","d","e"))
y = data.frame(c=c("c","e","e"), d=c(8,4,2))

z <- merge(x,y,by="c", all.x = TRUE)
z <- z[c(2,3,1,4)]
z.new <- subset(z, d!="NA")

z.sort <- lapply(z,  sort)

z$t <- ifelse(complete.cases(z), TRUE, FALSE)

## Q3
a1 <- seq(0.1, 10.0, by = 0.1)
a1<- as.matrix(a1)
a2 <- rep(-0.1, 100)
a2 <- as.matrix(a2)
a3 <- seq(1.1, 20.9, by = 0.2)
a3<- as.matrix(a3)
a4 <- rep(2.5, 100)
a4 <- as.matrix(a4)
A <- cbind(a1, a2, a3, a4)
A

#3-1
t(A)%*%A

#3-2
apply(A, 2, mean)

#3-3
apply(A, 1, sum)

#3-4
colnames(A) <- c('V1', 'V2', 'V3', 'V4')
A





