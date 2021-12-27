# Creating data frame -------------------------------
# data frame is a list
name <- c("K", "P", "L")
age = c(25, 23 ,21)
male <- c(T, F, T)
x <- data.frame(name, age, male, stringsAsFactors = T); x

version

str(x)

y <- data.frame(name, age, male); str(y)

x[2] # return matrix (same with the list)

#list object way
x[[2]] # vector
x[2:3]
x$age # vector

# matrix way
x[,2] # vector
x[,2:3]


# Extracting a subset from data frame ---------------
# Indexing ------------------------------------------
x <- data.frame(x1 = 1:5, x2 = 6:10, x2 = 11:15); x
# list object way
x$x1 >= 5
# matrix way
x[1:3, ]
class(x[1:3,])
class(x[1:3, 1])
class(x[1:3, 1, drop = F])



# Filtering -----------------------------------------
x[x$x1 >= 5, ]
x[x[,1] >= 5, ]



# subset() ------------------------------------------
x <- data.frame(x1 = c(6, 3, NA, 3, 8), x2 = 1:5, x3 = 7:11); x
x[x$x1 >= 5, ]
subset(x, x1 >= 5)
x[-3,]


# Removing obs with NA -----------------------------
x
complete.cases(x)
y <- x[complete.cases(x), ]; y


# Adding obs. --------------------------------------
x = data.frame(name = letters[1:5], age = 22:26); x
k = c('f', 27)
rbind(x, k)

d1 <- data.frame(name = c("A", "W", "C"), age = c(23, 24, 25))
d2 <- data.frame(name = c("Q", "F"), age = c(21, 20))
rbind(d1, d2)


d1 <- data.frame(x1 = c( 1, 3, 4), x2 = 1:3)
d2 <- matrix(0, 2, 2)
colnames(d2) <- c("x1", "x2")
d3 <- rbind(d1, d2); d3
class(d3)


d <- data.frame(x1 = c(1, 4, 3), x2 = 1:3); d
cbind(d, matrix(1, 3, 2))
cbind(d, d$x1 - d$x2)

d$diff <- d$x1 - d$x2; d
d[[4]] <- 1:3; d
d[5:6] <- matrix(1, 3, 2); d


# Adding variables ---------------------------------
d1 <- data.frame(name = c("K", "C", "P"), age = c(22, 27, 24)); d1
d2 <- data.frame(male = c(T, F, T), name = c("P", "K", "Q")); d2
merge(d1, d2, by = "name")
merge(d1, d2, by = "name", all = T)
merge(d1, d2, by = "name", all.x = T)
merge(d1, d2, by = "name", all.y = T)

# Different names of ID
d1 <- data.frame(name = c("K", "C", "P"), age = c(22, 27, 24)); d1
d2 <- data.frame(male = c(T, F, T), last = c("P", "K", "Q")); d2
merge(d1, d2, by.x = "name", by.y = "last")


# Duplicated ID
d1 <- data.frame(name=c('Kim','Choi','Park'),age=c(22,27,24)); d1
d2 <- data.frame(male=c(T,F,T),name=c('Park','Kim','Kim')); d2
merge(d1,d2,by='name')


# Applying functions -------------------------------
d <- data.frame(x1 = 2:5, x2 = 6:9, x3 = c(5, 8, 1, 5)); d
apply(d, 1, mean)
apply(d, 2, mean)

d <- data.frame(name=c('Kim','Park','Choi'),age=c(22,27,24),stringsAsFactors=F); d
x <- apply(d, 2, sort); x
x <- lapply(d, sort); x
as.data.frame(x)

a = matrix(0, 2, 2); x = as.data.frame(a); x
is.data.frame(x)

# as.data.frame() -------------------------------
a <- matrix(0, 2, 2)
x <- as.data.frame(a)
is.data.frame(x)
