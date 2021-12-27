M <- matrix(month.abb, nrow = 3);M
array(M)

array(data = c(1:9, 10:18), dim = c(3, 3, 2))

a = sample(letters, 24)
dim(a) = c(4, 3, 2); a

A = array(data = c(sample(letters, 9), sample(LETTERS, 9)), dim = c(3, 3, 2)); A
A[, 2,2]

A = array(data = c(1:4), dim = c(2, 2)); A
B = array(data = c(11:14), dim = c(2, 2)); B
C = array(data = c(111:114), dim = c(2, 2)); C
rbind(A, B, C)

a = seq(50, 78, 2); a
length(a)
array(a, dim = c(5, 3, 2))









