# R Programming Basic [27 exercises with solution]

name = readline("input your name: "); print(name)

ls()

seq(20, 50)
mean(20:60)
sum(51:91)

sample(-50:50, 10)

a <- c(1, 1)
for(i in 3:10){
  a <- c(a, a[i-2] + a[i-1])    
};a

num = 20
prime <- c(2, 3)
for(i in 4:20){
  if(!any(i%%prime == 0)){
    prime <- c(prime, i)
  }
}; prime

for(i in 1:100){
  if(i%%3 == 0){
    if(i%%5 == 0){
      print("FizzBuzz")
    }
    else{
      print("Fizz")
    }
  }
  else if(i%%5 == 0)
    print("Buzz")
  else
    print(i)
}

letters[1:10]; LETTERS[1:10]; LETTERS[22:24]

x = 2*3*5*7*11*13
factors <- NULL
for(i in which(prime <= floor(sqrt(x)))){
  if(x%%prime[i] == 0)
    factors <- c(factors, prime[i])
}; factors

x <- c(1:100); max(x); min(x)
my_max = function(x){
  m <- x[1]
  for(i in x[-1]){
    if(i >= m)
      m <- i
  }
  return(m)
}
my_max(1:30)


unique_find = function(x){
  result <- NULL
  for(i in x){
    if(!any(result == i))
      result <- c(result, i)
  }
  return(result)
}
unique_find(c(1:4, 1, 2, 3, 1, 2))
unique("asdfasdfasf")

a <- 1:3; b <- 4:6; c <- 7:9
matrix(c(a, b, c), nrow = 3, byrow = F)

rnorm(10, mean = 0, sd = 0.1)

read.csv("path")

a <- 1:3; b <- letters[1:3]; c <- c(T, F, T); a; b; c
typeof(a); typeof(b); typeof(c)
class(a); class(b); typeof(c)
mode(a); class(b); typeof(c)

matrix(1:20, nrow = 5, byrow = T)
matrix(1:9, nrow = 3, byrow = T)
matrix(month.abb[1:4], nrow = 2, byrow = F)

array(1:36, dim = c(3, 4, 3), dimnames = list(c("a", "b", "c"),
                                              c("d", "e", "f", "g"),
                                              c("h", "i", "j")))
array(1:18, dim = c(3, 3, 2))

list(month.name[1:10], matrix(1:4, nrow = 2, byrow = F), sum)

plot.new()
plot(1, type = "n", xlim=c(0, 20), ylim=c(0, 20))
hist(rnorm(100, mean = 0, sd = 2.5), breaks = 5)

barplot(rnorm(100, mean = 0, sd = 1))

x <- 1:10
sum(x); prod(x); mean(x)

a <- vector(mode = "list", length = 3); a
a[[1]] <- 1:4; a[[2]] <- letters[1:4]; a[[3]] <- c(T, F, T)

print(Sys.Date())
print(Sys.time())























