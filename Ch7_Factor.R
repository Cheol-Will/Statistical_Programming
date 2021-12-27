# Factor & level ---------------------------------
x <- c(5, 10, 5, 8, 10)
y <- factor(x, levels = c(5, 8, 10), labels = c('a', 'b', 'c')); y
str(y)
unclass(y)

length(y)
levels(y)
length(levels(y))

z <- factor(x, levels = c(5, 8, 10, 15), labels = letters[1:4]); z
z[5] <- 'd'; z
z[5] <- 'z'; z


# tapply() --------------------------------------
score <- c(92,84,80,67,80,75,60,93,77,84)
dept <- c('a', 'b', 'b', 'c', 'a', 'c', 'a', 'b', 'c', 'a')
tapply(score, dept, mean)

d <- data.frame(gender = c('m', 'f', 'm', 'f', 'f', 'm'),
                age = c(35, 27, 33, 28, 37, 29),
                salary = c(5200, 2500, 4700, 3100, 4600, 4800)); d
d$age30 <- ifelse(d$age > 30, 1, 0)
tapply(d$salary, list(d$gender, d$age30), mean)


# split() ---------------------------------------
d = data.frame(gender=c('M','F','M','F','F','M'),
               age=c(35,27,33,28,37,29),
               salary=c(5200,3500,4700,3100,4600,4800))
d$age30 = ifelse(d$age > 30, 1, 0); d
split(d, d$gender)
split(d, list(d$gender, d$age30))


# by() ------------------------------------------
by(iris[,1:2],iris$Species,cor)


# Table -----------------------------------------
x <- sample(1:5, replace = T, size = 100)
table(x)
x <- list(vote = c(T, T, F, T, F), age20 = c(T, F, T, F, T)); x
tb <- table(x); tb
tb[1,]
class(tb)
tb/sum(tb)
apply(tb, 2, sum)


addmargins(tb)
dimnames(tb)
names(tb)


# aggregate() & cut() --------------------------
aggregate(iris[,-5], list(iris$Species), median)
x <- c(2, 5, 10, 15, 19, 3, 17, 11, 8, 6); x
y <- seq(0, 20, 2); y
cut(x, y, labels = F)









