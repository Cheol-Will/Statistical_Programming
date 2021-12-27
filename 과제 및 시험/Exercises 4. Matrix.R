M = matrix(); M
M <- matrix(1:4); M
M <- matrix(1:4, ncol = 2); M
rownames(M) <- c("r1", "r2"); colnames(M) <- c("c1" ,"c2"); M

M <- matrix(letters[1:24], ncol = 4, byrow = F); M
M[3, 2]
M[3, , drop = F]
M[, 2, drop = F]

M1 <- matrix(1:6, nrow = 2); M2 <- matrix(c(1,0), nrow = 2, ncol = 3, byrow = T); M1; M2
M1 + M2
M1 - M2
M1 %*% t(M2)


a <- list(comp1 = 1:5, comp2 = 6:10); a
# 이거 안 된다 as.matrix(a)
a <- list(comp1 = 1:5, comp2 = 6:10); a
do.call(cbind.data.frame, a)

subset(x = M1, select = M1[1, ] > 1)

M <- matrix(c(rnorm(10),
              rnorm(10), 
              rnorm(10)), ncol = 3); M
cor(M)
max(M)
which(M == max(M), arr.ind = T)
which(M == min(M), arr.ind = T)

apply(M, MARGIN = 2, max)
apply(M, MARGIN = 1, max)


M
ML <- list(M[,1], M[,2], M[,3]); ML
t(ML[[1]])

M <- matrix(1:9, ncol = 3); M
t(apply(M, 2, rev))
N <- matrix(1:9, ncol = 3); N
rbind(M, N)





















