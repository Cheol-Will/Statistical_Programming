# Recursion ---------------------------------
# Factorial function
rfact <- function(x){
  if(x == 0) return(1)
  else return(x*rfact(x-1))
}
rfact(4)

# Sort function
qsort <- function(x){
  if(length(x) <= 1 ) return(x)
  else{
    element <- x[1]
    partition <- x[-1]
    x1 <- partition[partition < element]
    x2 <- partition[partition >= element]

    return(c(qsort(x1), element, qsort(x2)))
    }
}
qsort(c(3, 4, 5, 2, 7, 1, 7))



# Replacement functions ------------------------
x <- 1:3; names(x)
names(x) <- c('a', 'b', 'c'); x

x <- 'names<-'(x, value = c('a', 'b', 'c'))

getAnywhere('names<-')

x <- 1:5
x[2] <- 4; x
x <- 1:5
x <- '[<-'(x, 2, value = 4); x


'cutoff<-' <- function(x, value){
  x[x>value] <- Inf
  x
}
x <- 1:5
cutoff(x) <- 3; x


# Your own binary operators ------------------------
'%ab2%' <- function(a, b) a*b+2
5 %ab2% 2

'%dist%' <- function(x, y) sqrt(sum((x-y)^2))
0 %dist% c(3,4)
c(1, 4) %dist% c(4, 8)



# Anonymous functions ------------------------------
f <- function(x) x/sum(x)
x <- matrix(1:12, 4, 3)
apply(x, 2, f)

apply(x, 2, function(x) x/sum(x))

apply(x, 2, function(x) x+x[1]*10)

f <- function(x){
  mx <- mean(x)
  sx <- sd(x)
  return(list(mean = mx, sd = sx))
}
f(1:5)

f <- function(x, na.rm = T){
  mx <- mean(x, na.rm = na.rm)
  sx <- sd(x, na.rm = na.rm)
  return(list(mean = mx, sd = sx))
}
f(c(1:5, NA), T)

f <- function(x, ...){
  mx <- mean(x, ...)
  sx <- sd(x, ...)
  return(list(mean = mx, sd = sx))
}
f(c(1:5, NA), na.rm = T)




































































