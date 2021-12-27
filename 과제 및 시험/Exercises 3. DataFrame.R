a = data.frame(); a

a <- data.frame(c1 = 1:7, c2 = letters[1:7], c3 = LETTERS[1:7], c4 = month.abb[1:7], c5 = 1:7); a

str(a)

summary(a)

a["c1"]
a[c(1, 2)]

a[c(3, 5), c(1, 3)]

a[8,] <- c(8, 'h', 'H', "Aug", 8, 7); a

a[-6]

b <- data.frame(c1 = c(3, 5, 2, 4, 1), c2 = c(7, 3, 55, 9, 2)); b
apply(b, MARGIN = 2, FUN = sort)

b
c <- data.frame(c1 = c(2, 3, 4), c2 = c(3, 4, 6)); c
rbind(b, c);

d1 <- data.frame(name = c("K", "C", "P"), age = c(22, 27, 24)); d1
d2 <- data.frame(male = c(T, F, T), name = c("P", "K", "Q")); d2
merge(d1, d2, by = "name")
merge(d1, d2, by = "name", all = T)
merge(d1, d2, by = "name", all.x = T)


d1 <- data.frame(name = c("K", "C", "P"), age = c(22, 27, 24)); d1
d2 <- data.frame(male = c(T, F, T), last = c("P", "K", "Q")); d2
merge(d1, d2, by.x = "name", by.y = "last")


d1["adr"] <- c(NA, "B", NA); d1
d1[is.na(d1["adr"]), 3] <- 3; d1

rownames(d1) <- c("r1", "r2", "r3"); d1
colnames(d1) <- c("c1", "c2", "c3"); d1

d1[sample(dim(d1)[1], 1), , drop = F]
d1[sample(dim(d1)[1], 1), , drop = T]

colnames(d1) <- c("z", "q", "c"); d1
sort(colnames(d1))
d1[, sort(colnames(d1))]

d1 <- data.frame(c1 = 1:4, c2 = 2:5);
d2 <- data.frame(c1 = 1:4, c2 = 10:13)
setdiff(d1, d2)
intersect(d1, d2)
union(d1,d2)

unlist(d1)
unlist(d2)

d1["c3"] <- c(NA, 1, NA, NA); d1
sum(is.na(d1))




class(airquality)
head(airquality)
## Sorting by multiple columns
airquality[
  order( airquality[, 1], airquality[, 2] ),
  ]
head(airquality[, -c(2, 3)])







































