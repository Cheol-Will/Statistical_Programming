# statistical programming review
# HW1
x <- c(1,5,2,5,4,3,-1,2,1,1,7)
y <- c(4,1,3,2,1,5,-3,1,3,4,2)
z <- y; z[z<3] = 0; z
v <- x != 3; v
h <- matrix(c(x, y, v), nrow = 3, byrow = T); h

set.seed(100)
x <- rnorm(50, mean = 5, sd = 3.5)
sum(x)/length(x)
sum((x-mean(x))^2)/(length(x)-1)
var(x)
idx <- which(x < 0 | x > 8); idx
x_ <- x[-idx]; x_
y <- matrix(x_, nrow = 4, byrow = T); y

set.seed(200)
x <- rt(30, df = 3); x
sum(x[5:30]^2) - 3*sum(x[5:30]^3)
sum(1/x[1:10] + 3*x[1:10]^2)
y <- rnorm(30, 0, 1)
L <- sum((x-y)^2)^(1/2); L


a <- "1 3 5 1 4
8 3 10 9 4
3 15 6 2 3
1 4 2 5 2
4 6 1 4 1"
a_ <- strsplit(a, split = "\n")
a_ <- strsplit(a_[[1]], split = ' ')
a <- unlist(a_); a
a <- as.integer(a)

M <- matrix(a, nrow = 5, byrow = T); M
dim(M)
solve(M)
solve(M)%*%M
row.names(M) <- c("r1", "r2", "r3", "r4", "r5"); M
idx <- M[5,] > 2 & M[5,] < 5
M[2, idx]
m <- as.vector(M); m
N_ <- M[, -3]; N_
N <- cbind(N_, M[,3]); N
apply(N, MARGIN = 2, FUN = mean)


# HW2
set.seed(1)
x <- rt(50, 1, 2)
Q1 <- function(x){
  len <- length(x)
  mean <- sum(x)/len
  x <- sort(x)
  min <- x[1]
  max <- x[len]
  med <- median(x)
  IQR <- c(quantile(x, probs = 0.25), quantile(x, probs = 0.75))
  names(IQR) <- c("1st Qu", "3rd Qu")
  
  result <- list(
    MIN = min,
    MAX = max,
    MEAN = mean,
    MEDIAN = med,
    IQR = IQR,
    Length = len
  )
  
  return(result)
}
Q1(x)

sxx <- function(x){
  result <- sum((x-mean(x))^2)
  return(result)
}

Q2 <- function(x, y, method = "pearson"){
  if(method == "spearman") {
    x <- rank(x); y <- rank(y)
  }
  result <- sum((x-mean(x))*(y-mean(y)))/sqrt(sxx(x)*sxx(y))
  
  return(result)
}

a <- sample(1:30, 30)
b <- sample(1:50, 30)

Q2(a, b)
cor(a, b)
Q2(a, b, method = "spearman")
cor(a, b, method = "spearman")



head(Seatbelts)
sb_mean <- apply(Seatbelts, MARGIN = 2, FUN = mean); sb_mean
sb_sd <- apply(Seatbelts, MARGIN = 2, FUN = sd)
head(Seatbelts - sb_mean)
m_mean <- matrix(sb_mean, nrow = nrow(Seatbelts), ncol = ncol(Seatbelts), byrow = T); m_mean


Stand <- function(x){
  sb_mean <- apply(x, MARGIN = 2, FUN = mean)
  sb_sd <- apply(x, MARGIN = 2, FUN = sd)
  
  m_mean <- matrix(sb_mean, nrow = nrow(Seatbelts), ncol = ncol(Seatbelts), byrow = T); df_mean <- as.data.frame(m_mean)
  m_sd <- matrix(sb_sd, nrow = nrow(Seatbelts), ncol = ncol(Seatbelts), byrow = T); df_sd <- as.data.frame(m_sd)

  result <- (x-m_mean)/m_sd
  return(result)
}
Seatbelts.new <- Stand(Seatbelts); head(Seatbelts.new)

Seatbelts[,"DriversKilled"] > 160 & Seatbelts[,"DriversKilled"] < 180
idx <- which(Seatbelts[,"DriversKilled"] > 160 & Seatbelts[,"DriversKilled"] < 180); idx
year <- (idx-1)%/%12 + 1969
month <- (idx)%%12
for(i in 1:length(idx)){
  cmd <- sprintf("%d %s", year[i], month.abb[i])
  print(eval(cmd))
  
}

a <- unlist(Seatbelts[, "VanKilled"]); a
less <- a < 10; less
moderate <- a >= 10 & a < 15; moderate
many <- a>=15; many
a[less] <- "less"
a[moderate] <- "moderate"
a[many] = "many"; a
a <- factor(a); a

Seatbelts.new$VanKilledFactor <- a


Seatbelts$VanKilledFactor <- 1 # (put any values temporarily to make the VanKilledFactor variable in Seatbelts)
Seatbelts$VanKilledFactor[Seatbelts$VanKilled < 10] <- "Less"
Seatbelts$VanKilledFactor[Seatbelts$VanKilled >= 10 & Seatbelts$VanKilled < 15] <- "Moderate"
Seatbelts$VanKilledFactor[Seatbelts$VanKilled > 15] <- "Many"


# regualr expression
df <- read.csv("data/bike_usage_0.csv"); head(df)
str(df)
station_in <- df$Station_in
station_in_sorted <- sort(table(station_in),decreasing = T)[1:10]
g_h <- grep("홍대입구역 ", station_in)
length(g_h)
station_in[g_h]

g_h_y <- grep("홍대입구역|여의나루역", station_in)
length(g_h_y)
station_in[g_h_y]

station_in_sorted
g_y_start <- grep("^여의", station_in); 
length(g_y_start)
station_in[g_y_start]

# Logical
station_in_sorted
g_y_start <- grepl("^여의", station_in); g_y_start
length(g_y_start) # logical이라서 걍 다 나오기는 함
station_in[g_y_start] # logical이라서 출력은 ㅇㅋ



a <- "정립-반정립-종합. 변증법의 논리적 구조를 일컫는 말이다. 변증법에 따라 철학적 논증을 수행한 인물로는 단연 헤겔이 거명된다. 변증법은 대등한 위상을 지니는 세 범주의 병렬이 아니라, 대립적인 두 범주가 조화로운 통일을 이루어 가는 수렴적 상향성을 구조적 특징으로 한다. 헤겔에게서 변증법은 논증의 방식임을 넘어, 논증 대상 자체의 존재 방식이기도 하다. 즉 세계의 근원적 질서인 ‘이념’의 내적 구조도, 이념이 시ㆍ공간적 현실로서 드러나는 방식도 변증법적이기에, 이념과 현실은 하나의 체계를 이루며, 이 두 차원의 원리를 밝히는 철학적 논증도 변증법적 체계성을 지녀야 한다.
헤겔은 미학도 철저히 변증법적으로 구성된 체계 안에서 다루고자 한다. 그에게서 미학의 대상인 예술은 종교, 철학과 마찬가지로 ‘절대정신’의 한 형태이다. 절대정신은 절대적 진리인 ‘이념’을 인식하는 인간 정신의 영역을 가리킨다. 예술ㆍ종교ㆍ철학은 절대적 진리를 동일한 내용으로 하며, 다만 인식 형식의 차이에 따라 구분된다. 절대정신의 세 형태에 각각 대응하는 형식은 직관ㆍ표상ㆍ사유이다. ‘직관’은 주어진 물질적 대상을 감각적으로 지각하는 지성이고, ‘표상’은 물질적 대상의 유무와 무관하게 내면에서 심상을 떠올리는 지성이며, ‘사유’는 대상을 개념을 통해 파악하는 순수한 논리적 지성이다. 이에 세 형태는 각각 ‘직관하는 절대정신’, ‘표상하는 절대정신’, ‘사유하는 절대정신’으로 규정된다. 헤겔에 따르면 직관의 외면성과 표상의 내면성은 사유에서 종합되고, 이에 맞춰 예술의 객관성과 종교의 주관성은 철학에서 종합된다.
형식 간의 차이로 인해 내용의 인식 수준에는 중대한 차이가 발생한다. 헤겔에게서 절대정신의 내용인 절대적 진리는 본질적으로 논리적이고 이성적인 것이다. 이러한 내용을 예술은 직관하고 종교는 표상하며 철학은 사유하기에, 이 세 형태 간에는 단계적 등급이 매겨진다. 즉 예술은 초보 단계의, 종교는 성장단계의, 철학은 완숙 단계의 절대정신이다. 이에 따라 예술-종교-철학 순의 진행에서 명실상부한 절대정신은 최고의 지성에 의거하는 것, 즉 철학뿐이며, 예술이 절대정신으로 기능할 수 있는 것은 인류의 보편적 지성이 미발달된 머나먼 과거로 한정된다.
"
a <- sub(x = a, patter = '\n', replacement = '')
a_ <- strsplit(x = a, split = "\\. "); a_[[1]]
a_ <- unlist(a_); a_
a_[6] <- strsplit(x = a_[6], split = '\\.'); a_
a_ <- unlist(a_); a_
a_[14] <- strsplit(x = a_[14], split = '\\.'); a_
a_ <- unlist(a_); a_
a_[15] <- sub(x = a_[15], pattern = "\n", replacement = ''); a_
a_ <- paste(a_,); a_

x <- file("data/sat_test.txt", 'w')
for(i in 1:length(a_)) writeLines(a_[i], x)
close(x)


x <- file("data/sat_test.txt", 'r')
readLines(x)
close(x)

x <- read.table("data/sat_test.txt", sep = "\n"); x

a_ <- paste(a_, "\n"); a_
x <- file("data/sat_test.txt", 'w')
for(i in 1:length(a_)) writeLines(a_[i], x)
close(x)

x <- read.table("data/sat_test.txt", sep = "\n"); x
x <- unlist(x[[1]]); x



df[,1] <- as.Date(df[,1], "%Y-%M-%d"); str(df)





# Function에 관하여
f8_1 <- function(x) return(sin(x))
f8_2 <- function(x) return(cos(x))
plot(c(0, 5), c(-1.5, 1.5), type =  "n", xlab = "X", ylab = "Y")
for(f in c(f8_1, f8_2)) plot(f, 0, 5, add = T)

# Environment에 관하여
seq
search()
f9_1 <- function() asdf <<- 1
asdf
f9_1()
asdf
f9_2 <- function() assign("asdfasdf", 100, pos = .GlobalEnv)
asdfasdf
f9_2()
asdfasdf

# Recursion

# Replacement Function
x <- 1:3; names(x) <- NULL; x
x <- 'names<-'(x, value = c('a', 'b', 'c')); x

# User defined operator
'%asdf%' = function(a, b) a+b*2
10 %asdf% 20

# Graph
plot(x = c(0, 10), y = c(0, 8))
lines(x = seq(0, 10, 2), y = c(1, 4, 3, 5, 2, 6) + 1, 
      col = 'brown',
      lwd = 1,
      lty = 6)
points(x = seq(0, 10, 2), y = c(1, 4, 3, 5, 2, 6), cex = 3, pch = 3)
plot(c(0, 10), c(0, 8), type = "l")
lines(x = seq(0, 10, 2), y = c(1, 4, 3, 5, 2, 6) + 1, 
      col = 'brown',
      lwd = 1,
      lty = 6)
points(x = seq(0, 10, 2), y = c(1, 4, 3, 5, 2, 6), cex = 3, pch = 3)


n = 100
x <- runif(100, -5, 5); x
y1 <- 5- 0.5*x + rnorm(n)
y2 <- 5- 0.5*x + rnorm(n)
plot(x, y1, xlab = "X", ylab = "Y")
points(x, y2, cex = 3, pch = 1, col = 3)

Time = 1:30
stock1 <- cos(Time/3) + 2.8 
stock2 <- sin(Time/3)*0.8 + 3
plot(Time, stock1, type = "b")
lines(Time, stock2, type = "b", col = "red", lwd = 2, lty = 2)

x <- c(100, 200, 300)
barplot(x, horiz = T, names.arg = c('1', '2', '3'))
x <- matrix(c(12, 13, 24, 25), 2, 2); x
barplot(x, horiz = T, beside = T, names.arg = c("c1", "c2"))
  


x <- rnorm(10000, 0, 1)
hist(x, main = "Normal", freq = F)
lines(density(x), col = "red", lty = 2, lwd = 3)


x <- c(12, 13, 14, 15); x
pct <- paste(round(x/sum(x)*100, 1), "%")
pie(x, labels = pct)


x <- rnorm(100, 3, 1)
y <- rnorm(100, 2, 1)
boxplot(x, y)

text(x = 1, y = 1, "asdf")

par(mfrow = c(3, 3))
x <- cbind(rnorm(100), rt(100), rchisq(100)); head(x)
par(mfrow = c(1, 3))
for (i in 1:3) hist(x[,i])













