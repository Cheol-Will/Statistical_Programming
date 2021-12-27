# Assign the single number 7 to the object x
# scalar and at the same time vector 
x <- 7
is.vector(x)

# character vector
x <- c(letters[1], letters[2])

# logical vector
x <- c(T, T, F, T)

# Create a Vector Object
x <- vector("numeric", 10)
x <- vector("character", 5)
for(i in 1:length(x)){
  x[i] = letters[i]
}

# Indexing: Index는 1부터 + Vector로 입력 받음
x = vector("numeric", 10)
for(i in 1:10){
  x[i] = i
}
x[1]
x[c(5, 6, 2, 8, 9, 4)]
idx = 3:6; x[idx]

# Filtering  -------------------------------
y <- x[1:5]
z <- x[-(1:5)]
w <- x[c(-1, -2, -3, -4, -5)] # w, w1는 동일하다. -가 scalar multiplication
w1 <- x[-c(1, 2, 3, 4, 5)]
x; y; z; w; w1



# Adding & deleting vector elements --------
x <- 1:5
y <- c(x[1:3], 3.5, x[4:5]) # format이 동일해야하기 때문에 integer에서 numeric으로 변환
y <- y[-c(1, 2, 5)]; y

# Matrix
x <- matrix(0, 2, 2)
length(x)
x + 1:4 # default: columnwise 연산

# Replacement of vector elements:  ---------
x = 10:1; x
x[5:10] <- c(2, 3, 4, 5, 6, 7); x

# Vector operations ------------------------
# basic operation: Element-wise
# %%는 mode
x <- 11:15; y <- 1:5
x+y; x*y; x/y; y%%x

# Recycling or Expanding Automatically
x+2; x-2; x*2; x/2; x%%2
x^2; sqrt(x^2); exp(x); log(x)

x = 2.3 
round(x); floor(x); ceiling(x)
x = 2.7
round(x); floor(x); ceiling(x)

seq(1, 10, by = 3)
seq(1, 10, length = 5)
seq(10, 1, by = -3)

x <- c(5, 6, 9); seq(x)
x <- NULL; seq(x)

rep(3, 5)
rep(c(1, 2, 3), c(1, 2, 3))
rep(1:3, 3); rep(1:3, each = 3)

# NA --------------------------------------
x <- c(1:5, NA); x
length(x); mean(x)
mean(x, na.rm = T); sd(x, na.rm = T)
mode(X)

x = c(T, F, NA, T, F, F); mode(x)
x <- c("a", NA, "c"); mode(x)


# NULL ------------------------------------
x <- c(10,20,NULL,30,40); x; length(x)

x <- NULL
for(i in 1:10)
  x <- c(x, i); x

# Logical operators -----------------------
x = 1:10; y = seq(10, 1); x <= y; 
x = sample(letters[1:3], 5, replace = T); y = sample(letters[1:3], 5, replace = T)
x == y


# all() & any() Functions -----------------
x <- 1:7
all(x>4); any(x>4)


# identical() function -------------------
x = 1:3; y = c(1, 2, 3)
all(x == y); identical(x, y)
typeof(x); typeof(y)

  
# Filtering indexes -----------------------
x <- 1:10; x
y <- x[x>3]; y
x[c(F, F, T)] # recycling 알지?


# subset() function -----------------------
x <- c(-2, 7, NA, 3, 4, NA)
x[x>3]; subset(x, x>3) # subset does not print out NA


# which() function ------------------------
x <- c(-2, 7, 3, 4, 6, 2, 8, 10, NA)
which(x>3)


# ifelse() function -----------------------
x <- 1:10
y <- ifelse(x %% 3 == 0, 0, 1); y # ternary인가???
x <- sample(letters[1:5], 20, T); x
ifelse(x == 'a', 1, 0)



# sort() & order() functions -------------
x = sample(1:10, 10, T)
x; sort(x); order(x)
# order의 적용!!!!!!!!
x[c(order(x))]


# names() function ----------------------
x <- 1:3
names(x) <- c('a', 'b', 'c'); x; x[1]; x['b']
