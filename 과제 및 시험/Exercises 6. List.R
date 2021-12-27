list(comp1 = "a", comp2 = 1, comp3 = T)

M <- matrix(1:6, ncol = 2)
L <- list(comp1 = M, comp2 = 1:4, comp3 = T, comp4 = list(so1 = 11:14, so2 = letters[1:4])); L
L[[1]]
L[[2]]
L[["comp1"]]
L$comp1
L[[5]] <- data.frame(c1 = 1:4, c2 = month.abb[1:4])
L

L2 <- list(comp2 = 8:10, comp3 = F, comp5 = M); L2

a <- c(L, L2)
mode(L)
mode(a)
a[1]


mode(unlist(L))
class(unlist(L))
typeof(unlist(L))

df1 <- data.frame(c1 = 1:4, c2 = letters[1:4])
df2 <- data.frame(c1 = 11:14, c2 = letters[11:14])
L <- list(df1 = df1, df2 = df2); L
L[[1]]
L$df1
L[1]
L["df1"]

length(L)


dim(df1)
list(df1[1,], df1[2,], df1[3,], df1[4,])

length(LETTERS[5:19])
mode(LETTERS[5:19])
class(LETTERS[5:19])
is.list(LETTERS[5:19])
is.list(list(LETTERS[5:19]))

L <- list(comp1 = 1:4, comp2 = 3:6); L[[1]] <- L[[1]] + 100; L
L[["g4"]] = "python"; L
names(L)
names(L) <- c("comp1", "comp2", "comp3"); L


length(L[[1]])
length(L[[2]])

L2 <- list(comp1 = 1:4, comp2 = 102, comp3 = T); L2
setdiff(unlist(L), unlist(L2))



















































