# Creating mtrices ----------------------------
x <- matrix(nrow = 2, ncol = 3); x # empty element
x <- 1:12; matrix(x, nrow = 3, ncol = 4)
A = matrix(x, nrow = 3, ncol = 4, byrow = T); A


# Creating Identity Matrix --------------------
diag(x = 5)


# Dimension of Matrix -------------------------
length(A); dim(A)
nrow(A); ncol(A)


# Matrix operations ---------------------------
# +, -, *, /, ^, sqrt(), log(), exp()
# %*%, solve(), eigen(), t()
A <- matrix(1:4, 2, 2); B <- matrix(2:5, 2, 2); A; B
A * B
A%*%B
solve(A)
eA <- eigen(A); eA; eA$val; eA$vec
t(A)


# Matrix Indexing -----------------------------
A <- matrix(1:6, 2, 3); A[1, 3]; A[2, ]; A[1:2, 2]; A[1, c(2, 3, 1)]
A <- matrix(1:6, 2, 3)
A[1,] <- rep(0,3); A
A[1,] <- c(0); A
A[1,] <- c(2, 3); A
A[,c(1,3)] <- 2; A
A[-1, ]

# Filtering ------------------------------------
A <- matrix(1:20, 4, 5); A
A[2, ]>7; A[, A[2, ]>7]

A[,3]>=10 & A[,3]<=11
A[A[,3]>=10 & A[,3]<=11, c(1, 2)]

x <- c(5, 4, 7, 12)
A[x %% 2 == 1, ]

l <- which(x%%2 == 1); l
A[l, ]


# apply() function -----------------------------
A <- matrix(c(1:3, 9, 7, 8, 7, 1:8), 3, 5); A
apply(A, 2, sum)
apply(A, 1, mean, trim = 0.2)
apply(A, 2, rev)

# rbind() & cbind() functions ------------------
x <- c(1, 5, 2); y <- matrix(1:6, 2, 3)
rbind(x, y)
x <- matrix(0, 3, 2); y <- matrix(1, 3, 3)
cbind(x, y)


# converting list to matrix
a <- list(comp1 = 1:5, comp2 = 6:10); a
do.call(cbind.data.frame, a)



# Transformation into vector or matrix ---------
A <- matrix(0, 2, 3); A
x <- A[1, ]; x
is.vector(x)
x <- as.matrix(x); x
x <- as.vector(x); x

A <- array(0, dim = c(2, 2, 3)); A
as.vector(A); as.matrix(A)


# Names of matrix rows and columns -------------
A <- matrix(1:12, 3, 4); A
rownames(A) <- c('a', 'b', 'c'); A
colnames(A) <- 4:1; A

A['a', 3]
A['a', '3']
