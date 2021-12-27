# 1
my_unique <- function(x){
  result <- c()
  for(i in 1:length(x))
    if(!(x[i] %in% result)) result <- c(result, x[i]) 
  
  return (result)
}
my_sort <- function(x){
  len <- length(x)
  for(i in 1:len){
    x_min <- min(x[i:len])
    idx <- which(x == x_min)
    x[idx] <- x[i]
    x[i] <- x_min
  }
  
  return (x)
}
my_function1 <- function(x){
  result <- my_unique(x)
  result <- my_sort(result)
  
  return (result)
}
a <- c(4,1,1,5,4); a
my_function1(a)

b <- sample(letters[1:10], size = 100, replace = T); my_function1(b)


# 2

my_function2 <- function(distribution, avg, sd = NULL){
  if(!(distribution %in% c("Normal", "Poisson", "Exponential"))){
    print('check the distributional setting: consider ("Normal", "Poisson", or "Exponential")')
    return()
  }
    
  if(distribution == "Normal") sample <- "rnorm(size[i], mean = avg, sd = sd)"
  else{
    if(distribution == "Poisson") sample <- "rpois(size[i], lambda = avg)"
    else sample <- "rexp(size[i], rate = avg)"
  }
  
  summary_result <- vector("list", length = 4)
  size <- c(3, 5, 10, 30)
  
  for(i in 1:4){
    result <- NULL
    for(j in 1:1000)
      result <- c(result, mean(eval(parse(text = sample))))
      summary_result[[i]] <- c(
        min(result), 
        quantile(result, probs = 0.25),
        median(result),
        mean(result), 
        quantile(result, probs = 0.75),
        max(result)
      )
      names(summary_result[[i]]) <- c("min", "Q1", "med", "mean", "Q3", "max")
  }


  output <- "For the name distribution, the central limit theorem is tested"
  output <- gsub("name", distribution, x = output)
  print(output)
  
  return(summary_result)
}

my_function2(distribution = 'QWER', avg = 0, sd = 1)
my_function2(distribution = 'Normal', avg = 0, sd = 1)
b <- my_function2(distribution = 'Exponential', avg = 3); b
c <- my_function2(distribution = 'Poisson', avg = 3); c




  
# 3
my_function3 <- function(x, y, method = "min"){
  len_x <- length(x); len_y <- length(y)
  if(len_x != len_y) print("x & y should have the same length")
  a <- min;
  if(method == "max") a <- max;
  result <- c()
  for(i in 1:len_x){
    result <- c(result, a(x[i], y[i]))
  }
  return (result)
}

x=c(3,6,1,7,2)  
y=c(2,4,1,3,5)

my_function3(x, y)