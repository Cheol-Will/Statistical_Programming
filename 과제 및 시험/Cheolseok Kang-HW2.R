# Q1 ---------------------------------------------------
set.seed(1)
x <- rt(50, 1, 2)
my_max <- function(x){
  max_result <- x[1];
  for (i in x){
    if(i > max_result) max_result <- i
  }
  return(max_result)
}
my_min <- function(x){
  min_result <- x[1];
  for (i in x){
    if(i < min_result) min_result <- i
  }
  return(min_result)
}
my_mean <- function(x, na.rm = F){
  if (na.rm == T) x <- x[!is.na(x)]
  mean <- sum(x)/length(x)
  return(mean)
}
my_quantile <- function(x){
  first_qu <- quantile(x, 0.25); third_qu <- quantile(x, 0.75)
  result <- c(first_qu, third_qu); names(result) <- c("1st Qu.", "3rd Qu.")

  return(result)
}
my_median <- function(x){
  if(length(x)%%2 == 0) result <- (my_mean(sort(x)[c(length(x)/2, length(x)/2+1)]))
  else result <- (sort(x)[ceiling(length(x)/2)])
  
  names(result) <- "Median"
  return(result)
}
Q1 <- function(x){
  MIN <- my_min(x); MAX <- my_max(x); MEAN <- my_mean(x); MEDIAN <- my_median(x); IQR <- my_quantile(x); LENGTH <- length(x)
  # IQR 남았다
  # MEDIAN에서 name 부여해야하고 IQR에서는 1st, 3rd 구하는 거니까 
  # my_median을 걍 1st, 3rd까지 return 하는 함수로 바꿔도 되겠다
  result_list <- list(MIN=MIN, MAX=MAX, MEAN=MEAN, MEDIAN=MEDIAN, IQR = IQR, LENGTH=LENGTH)
  return(result_list)
}
Q1(x)


# Q2 ---------------------------------------------------
# Spearman’s rank correlation coefficient의 정의부터 알아봐야겠다
my_sxy <- function(x, y){
  result <- sum((x - my_mean(x)) * (y - my_mean(y)))
  return(result)
}
my_sxx <- function(x){
  result <- sum((x - my_mean(x))^2)
  return(result)
}

Q2 <- function(x, y, method = "pearson", na.rm = F){
  if(na.rm == T){
    na_idx <- c(which(is.na(x)), which(is.na(y)))
    na_idx <- my_min(na_idx)-1
    x <- x[1:na_idx]; y <- y[1:na_idx]
  } else {
    na_idx <- c(which(is.na(x)), which(is.na(y)))
    if(sum(na_idx) > 1) return(NA)
  }
  
  if(method == "spearman") {
    x <- rank(x, na.last = T); y <- rank(y, na.last = T); 
  }
  my_corr <- my_sxy(x, y)/sqrt((my_sxx(x) * my_sxx(y)))
  return(my_corr)
}
# Ex1)
a <- c(1, 2, 3, 4, 5); b <- c(2, 7, 3, 4, 1)
Q2(a, b)
Q2(a, b, method = "spearman")

# Ex2)
a <- c(1, 2, 3, 4, 5, 4, NA); b <- c(5, 6, 8, NA, 2, 4, NA)
Q2(a, b, na.rm = T)



# Q3 ---------------------------------------------------
head(Seatbelts)
str(Seatbelts)

# (1)
my_sd <- function(x){
  sqrt(sum((x-my_mean(x))^2)/(length(x)-1))
}
apply(Seatbelts, MARGIN = 2, FUN = my_mean)
apply(Seatbelts, MARGIN = 2, FUN = my_sd)

# (2) -- 문제 발생
my_stand <- function(x){
  result <- (x-my_mean(x))/my_sd(x)
  return(result)
}
stand <- function(x){
  result <- apply(x, MARGIN = 2, FUN = my_stand)
  result <- as.data.frame(result)
  return(result)
}
Seatbelts.new <- stand(Seatbelts); Seatbelts.new

# (3) -- 연도 출력?
my_range <- function(x){
  result <- any(x>160 & x<180)
  return(result)
}
D <- as.vector(Seatbelts[,"DriversKilled"])
DM <- matrix(D, ncol = 12, byrow = T)
colnames(DM) <- month.abb
rownames(DM) <- seq(1969,1984)
a <- apply(DM, MARGIN = 2, my_range)
DM_1 <- DM[,a]
# 이제 네임만 출력하면 되겠다
cat("month only: ", names(a)[a])
print("9, 10, 11, 12월 순서대로")
for(i in 1:4){
  cat(names(a)[a][i], names(DM_1[,i])[DM_1[,i]>160 & DM_1[,i]<180], '\n')
}



# (4)
# VK < 10 -> size = "Less", 10 <= VK < 15 -> size = "Moderate", VK >= 15 -> size = "Many"
head(Seatbelts)
VK <- Seatbelts[,"VanKilled"]; VK
VK_idx <- as.vector(VK); VK_idx
VK <- as.vector(VK); VK

VK_idx[which(VK < 10)] <- "Less"; VK_idx
VK_idx[which(VK >= 10 & VK < 15)] <- "Moderate"; VK_idx
VK_idx[which(VK >= 15)] <- "Many"; VK_idx

VK_factor <- factor(VK_idx, levels=c("Less","Moderate","Many")); VK_factor

Seatbelts.new$VanKilledFactor = VK_factor; head(Seatbelts.new)










