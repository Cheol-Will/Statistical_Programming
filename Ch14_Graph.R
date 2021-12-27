# Creating graphs --------------------------------
# 처음에 x축 범위 y축 범위 설정
plot(c(0, 10), c(1, 4), ann = F)

plot(c(0, 10), c(11, 22), 
     xlab = "X", ylab = 'Y',
     main = "Empty Yet")

# Add points
# cex: size of points
# pch: type of point
points(x = seq(0, 8, 2), y = seq(11, 20, 2),
       col = "blue",
       cex = 3, pch = 3)
points(x = 1, y = 18,
       col = "green",
       cex = 3, pch = 8)


# Add lines
# col: color
# lwd: width of lines
lines(c(0, 0, 4, 8), c(11, 19, 19, 15),
      col = 'brown',
      lwd = 1,
      lty = 6)
lines(c(1, 4, 4, 8), c(13, 13, 16, 15),
      col = 'blue',
      lwd = 2,
      lty = 3)



plot(c(0, 10), c(0, 20), type = "l")
plot(c(0, 10), c(0, 20), type = "p", pch = 3)
plot(c(2, 5, 10), c(1, 15, 3), type = "p")
plot(c(2, 5, 10), c(1, 15, 3), type = "l")
# type c가 l보다 더 길다
# type l은 point와 닿지 않으려고 약간 줄임
plot(c(0, 10), c(0, 20), type = "c")



# Scatter plot ------------------------------------
n = 100
x <- runif(n, min = -5, max = 5)
y1 <- 5- 0.5*x + rnorm(n)
y2 <- 5- 0.5*x + rnorm(n)
plot(x, y1, xlab = "X", ylab = "Y")
points(x, y2, col = "blue", pch = 20)


# Line graph --------------------------------------
Time = 1:10
stock1 <- sort(sample(15:30, 10)); stock1
stock2 <- sort(sample(20:30, 10))
# b type은 both point and line
plot(Time, stock1, type = 'b', xlab = "Time", ylab = "Stock Price")
lines(Time, stock2, type = "b", col = "red", lwd = 2, lty = 2)
legend(x = 8.5, y = 18,
       c('A','B'),
       col=c('black','red'),
       lty=c(1,2),lwd=c(1,2))
legend(x = 8.5, y = 18,
       c('A','B'),
       col=c('black','red'),
       pch = c(1,1))



# Bar chart ---------------------------------------
x = c(100,250,200)
barplot(x,
        names.arg=c('a','b','c'),
        ylab='Products',
        main='Products by factory')

barplot(x,
        horiz = T,
        names.arg=c('a','b','c'),
        ylab='Products',
        main='Products by factory')
x <- matrix(1:4, 2, 2); x
barplot(x, beside = T, horiz = T, names = c("a", "b"))
x <- matrix(1:6, 3, 2)
barplot(x, beside = T, names = c("a", "b"))



# Histogram ---------------------------------------
x = rnorm(100)
hist(x, main = "Normal", freq = F)
lines(density(x), col = "red")
density(x)
head(x)
density(x)
?density


# Pie chart ---------------------------------------
x = c(100,300,300,500)
pct <- paste(round(x/sum(x)*100, 1), "%"); pct
pie(x, labels = pct, col = c("red", "blue", "green", "yellow"),
    main = "Pie Chart")
legend(c("A", "B", "C", "D"), fill = c("red", "blue", "green", "yellow"))


# Box plot ----------------------------------------
x <- rnorm(100); y <- rnorm(100, mean = 3, sd=  2); z <- rnorm(100, mean = -1, sd = 1.5)
boxplot(x, y, z, names = c("X", "Y", "Z"), 
        col = c(4, 2 ,3))

?text
text(1, 1, "Text")
text(1, 6, "Text", font = 2, cex = 2, col = 2)




par(mfrow = c(3, 3))

x <- cbind(rnorm(100), rnorm(100), rnorm(100)); head(x)
par(mfrow = c(1, 3))
for (i in 1:3) hist(x[,i])




































































