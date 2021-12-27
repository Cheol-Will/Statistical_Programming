vector(mode = "numeric", length = 6)
vector(mode = "character", length = 6)
vector(mode = "logical", length = 6)
vector(mode = "complex", length = 6)

v1 <- 1:3; v2 <- 4:6; v1 + v2
v <- vector(mode = "numeric"); v[1] <- 3; v
v1 * v2
v1 / v2

sum(v2, na.rm = T); prod(v2); mean(v2)
min(v2); max(v2)

v <- sample(1:10, 10, replace = F); v
sort(v, decreasing = T)
sort(v)

key = 2
sum(v==2)
any(v == 2)

v[length(v)]
n = 3; sort(v)[length(v)-n]

v1 <- sample(letters, 10); v2 <- sample(letters, 10); v1
intersect(v1, v2)

df <- data.frame(c1 = 1:4, c2 = 5:8); df
unlist(df)

n = 2
v <- rep(v, 3); v
v[seq(n, length(v), n)]

unique(v)

v2; intersect(v2, v1); setdiff(v2, v1)

rev(v2)

c(v2, v1)

sum(v >= 7)

df <- data.frame(c1 = 1:4, c2 = 5:8); df
unlist(df)

length(v);

v1
v2
cbind(v1, v2)
rbind(v1, v2)

v > 8

v; v+3






