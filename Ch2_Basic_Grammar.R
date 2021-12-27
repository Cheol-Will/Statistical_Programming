getwd()
# setwd()
x = 1
y = 2
z = x+y
print(z)

# integer를 원한다면
1L
2L
3L

Inf
-Inf

NaN
0/0

x = 'will'
mode(x)

x = 0.5
mode(x)

x = 12L
mode(x)

x = 2+3i
mode(x)

x = F
mode(x)

# Attributes
x = 10
attributes(x)


x = c(1, 2, 3)
y = c(4, 5, 6)
z = rbind(x, y)
attributes(z)
z = cbind(x, y)
z

# Data Structures
x = 1:10
length(x)

y = c("will", '12 34', 'a')
is.vector(y)

z = matrix(x, nrow = 2)
is.matrix(z)

a = 1:12
z = array(a, dim = c(2, 3, 2))
is.array(z)

b = list(X = x, A = a, Z = z)
b$X
b$Z

x = 1:10
y = sample(letters, 10)
z = data.frame(x, y)

x = rnorm(100)
y = hist(x, breaks = 40)

save.image("Week 2.RData")


# 수통입 과제 ㅎㅎ
x = c(3, 6, 8, 2, 5, 1, 5)
y = c(5, 6, 7, 3, 6, -1, 3)


sample_cov = function(x, y){
  x_mean = mean(x); print(x_mean)
  x_dev <- x-x_mean; print(x_dev)
  
  
  y_mean = mean(y); print(y_mean)
  y_dev <- y-y_mean; print(y_dev)
  

  x_y_dev <- x_dev * y_dev; print(x_y_dev)
  total <- sum(x_y_dev);   print(total)

  return (total/(length(x) - 1))
}

sample_var = function(x){
  x_mean = mean(x); print(x_mean)
  
  x_dev <- x-x_mean; print(x_dev)
  x_dev_squ <- x_dev^2; print(x_dev_squ)
  
  total <- sum(x_dev_squ); print(total)
  
  return (total/(length(x) - 1))
}


sxx = function(x){
  x_mean = mean(x); print(x_mean)
  
  x_dev <- x-x_mean; print(x_dev)
  x_dev_squ <- x_dev^2; print(x_dev_squ)
  
  total <- sum(x_dev_squ)

  return(total)
}



























