# 1 : Done
# 의문점1: input이 matrix가 아니라 vector일 수도 있는가? -> 인자가 matrix
# process: dim x, y -> dim y, z -> x, y -> new, z -> return 
# if dim x, y -> if z -> if dim y, z -> compute y, z -> compute new, x
# process: sequence 성공
my_mat_mul <- function(x, y, z = NULL){
  if(dim(x)[2] != dim(y)[1])
    return("Error: check the dimensions of the matrices")
  
  if(!is.null(z)){
    if(dim(y)[2] != dim(z)[1])
      return("Error: check the dimensions of the matrices")
    else 
        y = my_com_mat(y, z)
  }
  new <- my_com_mat(x, y)
  return(new)
}
my_com_mat = function(x, y){
  new <- matrix(0, dim(x)[1], dim(y)[2])
  for (i in 1:dim(x)[1]){
    for (j in 1:dim(y)[2])
      new[i, j] = sum(x[i,] * y[,j])
  }
  return(new)
}

A <- matrix(c(2, 4, 2, 3, 1, 1), 2, 3, byrow = T); A
B <- matrix(c(3, 1, 1, 0, -2, 1), 3, 2, byrow = T); B
C <- matrix(c(-1, 4, 1, 3, 2, 1), 2, 3, byrow = T); C
D <- matrix(c(1, 1, 2, 0, -3, 0), 3, 2, byrow = T); D
E <- matrix(c(3, 0, 2, -1, -2, 2), 2, 3, byrow = T); E

my_mat_mul(A, B)
my_mat_mul(C, D, E)

# 2 medv ~ rm + lstat
library(MASS)
head(Boston)
my_lr <- function(x) {
  y <- readline("response variable: ")
  x1 <- readline("independent variable 1: ")  
  x2 <- readline("independent variable 2: ")
  
  Y <- as.matrix(x[y])
  X <- as.matrix(x[c(x1, x2)], ncol = 2)
  X <- cbind(1, X)
  
  coefficients <- solve(t(X)%*%X)%*%t(X)%*%Y
  coefficients <- as.vector(coefficients)
  names(coefficients) <- c("(Intercept)", "rm", "lstat")
  Y_hat <-  X%*%coefficients
  
  result <- list(coefficients = coefficients, residuals = Y-Y_hat, fitted.values = Y_hat)
  
  return(result)  
}
result <- my_lr(Boston); result
# 검증 - coefficient는 걍 보고, residual과 fitted value는 506이면 통과
# dim(Boston)[1]
# result_1 <- lm(medv~rm+lstat, Boston)
# abs(result_1$coefficients - result$coefficients) < 1e-05
# sum(abs(result_1$residuals - result$residuals) < 1e-05)
# sum(abs(result_1$fitted.values - result$fitted.values) < 1e-05)



# 3번 
# x = c(2,4,1,3,1,9,2,3)
# x = c(1,3,1,4,2,3,1,1)
# y = c(4,10,1,3,1,1,2,3)

my_t.test <- function(x, y = NULL, sample = 1, hypo = "two-sided"){
  mean_x <- mean(x);  s_x <- sqrt(var(x)); n <- length(x)
  
  if(sample == 2){
    mean_y <- mean(y); s_y <- sqrt(var(y));
    m <- length(y)
    s_p <- sqrt(((n-1) * s_x^2 + (m-1)*s_y^2)/(n+m-2))
    
    my_mean <- mean_x - mean_y
    s <- s_p * sqrt(1/n + 1/m)
    df <- m + n - 2 
  } else {
    my_mean <- mean(x)
    df <- n - 1
    s <- s_x/sqrt(n)
  }
  
  diff <- readline("true value of the mean of difference in means under the null hypothesis: ")
  t_stat <- (my_mean - as.numeric(diff))/s
  
  p_value <- pt(t_stat, df = df)
  if(hypo == "greater")
    p_value <- 1-p_value
  else if(hypo == "two-sided"){
    p_value <- ifelse(p_value > 0.5, 1-p_value, p_value);
    p_value = p_value * 2
  }
    
  
  result <- c(t_stat, p_value)
  names(result) <- c("t-stat", "p-value")
  
  return(result)
}

x = c(2,4,1,3,1,9,2,3)
x = c(1,3,1,4,2,3,1,1)
y = c(4,10,1,3,1,1,2,3)

my_t.test(x, hypo = "less")
my_t.test(x, y, sample = 2)







