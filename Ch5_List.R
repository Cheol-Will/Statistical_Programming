# Creating list object -------------------------------
x <- list("Kim", c(1, 2, 3, 4), T); x
x[[1]]
x[[2]][3]

y <- list(name = "Kim", salary = 6000, union = T); y
y <- list(name = c("Kim", "Kang"), salary = 6000, union = T); y
y$name


a <- 1:3; b <- c("a", "b", "c")
z <- list(a, b); z
z[[1]][2]; z[[2]][3]

# Creating empty list object using vector function
x <- vector(mode = "list", 2); x



# List indexing -------------------------------
x <- list(name = "Kim", salary = 6000, union = T); x
x$salary
x[[1]]
x[["salary"]]

x[1:2]
x[2]
x[2]$salary
x[2][[1]]
class(x)
class(x[1])

x[[3]]



# Adding or deleting list components ---------
x <- list(a = 1:2, b = c("a", "b")); x
x$c <- rep(3, 5); x

y <- list(1:2); c(y, list(rep(0, 5)))

x[[4]] <- c(T, F, T, F); x
x[5:6] <- c(111, 222); x
x[7:8] <- c(1, 2, 3); x

x$c <- NULL; x
x[4:8] <- NULL; x


# List operations ----------------------------
x <- list(a = 1:2, b = c("a", "b")); length(x)
names(x)

y <- unlist(x); y
is.vector(y)

x = list(a=1:5,b=10:15); x
y <- unlist(x); y
names(y)
names(y) <- NULL; y

names(x)
names(x)[1] <- "aaa"; x


# Applying functions to lists ----------------
x <- list(a = 1:10, b = c(5, 8, 1, 7)); x

median(x$a); median(x$b)
y <- lapply(x, median); y

y <- sapply(x, median); y
names(y)

sapply(x, sort)
lapply(x, sort)

x <- list(a = 1:5, b = 5:1); x
sapply(x, sort)
lapply(x, sort)


# Recursive lists ----------------------------
x <- list(a = 1:2, b = c("a", "b", "c"))
y <- list(x = c("k", "j")); z = list(sub1 = x, sub2 = y); z

z["sub1"]
z$sub1
z$sub1$a



