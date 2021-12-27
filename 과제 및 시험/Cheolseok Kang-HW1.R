# 1 ----------------------------------------
x <- c(1,5,2,5,4,3,-1,2,1,1,7)
y <- c(4,1,3,2,1,5,-3,1,3,4,2)

z <- y
z[y<3] = 0; z

v <- x !=3; v

h = matrix(c(x, y, v), nrow = 3, byrow = T); h
# In the last row, v's boolean elements are converted to integer 
# because the first row x is integer and matrix has only one kind of data type



# 2 ----------------------------------------
set.seed(100)
x <- rnorm(50, mean=5, sd=3.5) # generate 50 samples from a normal distribution N(5, 3.5)

x_mean = sum(x)/length(x); x_mean

x_sd = (sum((x - x_mean)^2)/length(x))^(1/2); x_sd

x_idx = which(x < 0 | x > 8); x_idx

x_without_idx = x[-x_idx]; x_without_idx

x_matrix = matrix(x_without_idx, nrow = 4, byrow = T); x_matrix



# 3 ----------------------------------------
set.seed(200)
x <- rt(30, df=3) # generate 30 samples from a t-distribution with df 3

x_3_1 = x[5:30]
sol_3_1 = sum(x_3_1^2 - 3*x_3_1^3); sol_3_1

x_3_2 = x[1:10]
sol_3_2 = prod(1/x_3_2 + 3/x_3_2^2); sol_3_2

y <- rnorm(30, mean = 0, sd = 1)
sum((y-x)^2)^(1/2)



# 4 ----------------------------------------
M = matrix(c(1, 3, 5, 1, 4,
  8, 3, 10, 9, 4,
  3, 15, 6, 2, 3,
  1, 4, 2, 5, 2,
  4, 6, 1, 4, 1), nrow = 5, byrow = T); M

nrow(M); ncol(M)

M_inv = solve(M); M_inv
M%*%M_inv
M_inv%*%M

rownames(M) <- c("r 1", "r 2", "r 3", "r 4", "r 5"); M 

M[2, (M[5, ] > 2) & (M[5,] <5)]

m <- as.vector(M); m

M_third_col <- M[ ,3]; M_third_col
N = cbind(M, M_third_col); N

apply(N, 2, sum)/5






