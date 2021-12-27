### 1
# (1) 필요하면 시험 ㄱ
set.seed(1) # to set seed (important!!)
x <- rnorm(100) # generate 100 samples from a normal distribution N(0, 1)
M1 <- matrix(x[1:80], nrow = 10, byrow = T)
M2 <- matrix(x[81:100], nrow = 10)
M <- cbind(M1, M2); M

#(2)
a = M * t(M)
sum(a[10, 1:4])

# (3) 1-3번 문제 정정: x95 x96 -> x97 x98
N1 <- M[1:10, 1:8]
N2 <- t(M[1:8, 9:10])
N <- rbind(N1, N2)

# (4) 
H = list(M = dim(M), N = dim(N), name = c("Kim", "Choi", "Park", "Lee"));H

# (5)
H$N[2] <- NA; H



### 2
# (1)
x <- data.frame(a = c('v', 'w', 'w', 'v', 'v'), 
                b = c(2, 8, 4, 10, 6), 
                c = c('a', 'b', 'c', 'd', 'e')); x
y <- data.frame(c = c('c', 'e', 'e'), 
                d = c(8, 4, 2)); y
z1 <- merge(x, y, by = 'c', all.x = T)
z <- cbind(z1[,2:3], z1["c"], z1[4]); z

# (2)
z.new <- subset(z, z["d"] != 8); z.new

# (3)
t <- ifelse(complete.cases(z), T, F); t
z['t'] <- t; z



### 3
a1 <- seq(0.1, 10.0, 0.1); a1
a2 <- rep(-0.1, 100); a2
a3 <- seq(1.1, 20.9, 0.2); a3
a4 <- rep(2.5, 100); a4

M <- matrix(c(a1, a2, a3, a4), ncol = 4); M
# (1)
t(M)%*%M

# (2)
apply(M, MARGIN = 2, mean)

# (3) 
apply(M, MARGIN = 1, sum)

# (4)
colnames(M) <- c("V1", "V2", "V3", "V4"); M

