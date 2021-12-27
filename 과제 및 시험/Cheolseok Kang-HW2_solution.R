# Q1
Q1 <- function(x){
  min <- sort(x)[1]
  max <- sort(x)[length(x)]
  mean <- sum(x)/length(x)
  median <- summary(x)[3]
  IQR <- summary(x)[c(2,5)]
  length <- length(x)
  output <- list(MIN=min, MAX=max, MEAN=mean, MEDIAN=median, IQR=IQR, Length=length)
  return(output)
}

set.seed(1)
x <- rt(50, 1, 2)
Q1(x)





# Q2
Q2 <- function(x, y, na.rm=F, method="pearson")
{
  n <- length(x)
  nx <- length(x)
  ny <- length(y)
  z <- cbind(x,y)
  if (na.rm == T)
  {
    z <- z[complete.cases(z),]
    x <- z[,1]
    y <- z[,2]
    nx <- length(x)
    ny <- length(y)
  }
  
  # If your don’t specify na.rm=T, then your function returns a correlation 
  # based on the first few values before encountering the first NA value
  z <- cbind(x,y)
  i <- 0
  index <- NULL
  while(complete.cases(z)[i+1]){
    i <- i + 1
    index <- c(index,i)
    if(i == nx) break
  }
  x <- x[index]
  y <- y[index]
  z <- z[index, ]
  nx <- length(x[index])
  ny <- length(y[index])
  
  # if method="spearman" is specified
  if(method=="spearman"){
    x <- order(x)
    y <- order(y)
    z <- cbind(x,y)
  }
  
  meanx <- sum(x) / nx
  meany <- sum(y) / ny
  
  xbar <- sum(z[,1]) / length(z[,1])
  ybar <- sum(z[,2]) / length(z[,2])
  corxy <- sum((z[,1]-xbar)*(z[,2]-ybar)) / sqrt(sum((z[,1]-xbar)^2) * sum((z[,2]-ybar)^2))
  
  result <- list(corr=corxy)
  return(result)
}

# test:
a <- c(1,2,3,4,5)
b <- c(2,7,3,4,1)
Q2(a,b)
Q2(a,b,method="spearman")

a <- c(1,2,3,4,5,4,NA)
b <- c(5,6,8,NA,2,4,NA)
Q2(a,b,na.rm=T)
Q2(a,b)


# 3
Seatbelts <- as.data.frame(Seatbelts)
#(1)
M <- apply(Seatbelts, 2, mean)
S <- apply(Seatbelts, 2, sd)

#(2)
Stand <- function(x){
  z <- function(y){
    (y - mean(y))/sd(y)
  }
  return(apply(x, 2, z))
}

Seatbelts.new <- Stand(Seatbelts)

#(3)
index <- which(Seatbelts$DriversKilled >= 160 &  Seatbelts$DriversKilled <= 180)
year <- index%/%12+1969
month <- index%%12
month <- ifelse(month==0, 1, month)

Seatbelts$VanKilledFactor <- 1 # (put any values temporarily to make the VanKilledFactor variable in Seatbelts)
Seatbelts$VanKilledFactor[Seatbelts$VanKilled < 10] <- "Less"
Seatbelts$VanKilledFactor[Seatbelts$VanKilled >= 10 & Seatbelts$VanKilled < 15] <- "Moderate"
Seatbelts$VanKilledFactor[Seatbelts$VanKilled > 15] <- "Many"

