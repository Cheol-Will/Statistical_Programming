dat1 <- scan("Introduction to Statistical Programming/data/dat1.txt")
dat1

dat2 <- scan("Introduction to Statistical Programming/data/dat2.txt",
             what = character())
dat2

dat2_ <- scan("Introduction to Statistical Programming/data/dat2_.txt",
              what = character(), sep = "\n")
dat2_

# get input from the user scanf in C input in python
x <- scan("")
y <- scan("", sep = '\n') 

# readline()
z <- readline()
z

name <- readline("TYPE YOUR NAME: ")
name

# print
f <- function(x) print(x+10)
f(10)

# cat - combine한다
print("haha")
cat("haha")
haha

cat(1:3, 'asdf', 'qwer')
cat(1:3, 'asdf', 'qwer', sep = '')
cat(1:3, 'asdf', 'qwer', sep = '\n')
cat(1:3, 'asdf', 'qwer', sep = ', ')
cat(cat(1:10, sep = ''), 'asdf', 'qwer', sep = ', ')

f <- function(x) for(i in 1:3) cat(x+i, '\n')
f(10)

dat3 <- read.table("Introduction to Statistical Programming/data/dat3.txt", sep = ',', header = T)
dat3
mode(dat3)
is.data.frame(dat3)
readLines("Introduction to Statistical Programming/data/dat3.txt")

dat1 <- matrix(scan("Introduction to Statistical Programming/data/dat1.txt"),
                    4, byrow = T)
dat1
dat1 <- as.matrix(read.table("Introduction to Statistical Programming/data/dat1.txt"))
dat1

x <- file("Introduction to Statistical Programming/data/dat3.txt", 'r')
x
readLines(x, n = 1) 
readLines(x, n = 4) # 다 읽고 나면 
readLines(x, n = 1) # 남는 게 없다

close(x)


x <- file("Introduction to Statistical Programming/data/dat3.txt", 'r')
readLines(x, n = 2)
seek(con = x, where = 0)
seek(con = x, where = 4)



dat4 <- file("Introduction to Statistical Programming/data/dat4.txt", 'w')
writeLines("qwer\nasdf\nzxcv\n", dat4)
writeLines('ASDF\nQWER\n', dat4)
close(dat4)

dat4 <- file("Introduction to Statistical Programming/data/dat4.txt", 'r')
readLines(dat4)
close(dat4)

dt <- data.frame(stringsAsFactors = F)
dat5 <- file("Introduction to Statistical Programming/data/dat5.txt", 'r')
repeat{
  person = readLines(dat5,1)
  if (length(person) == 0) break
  l = vector("list", 3)
  names(l) = c("id", 'age', 'salary')
  l$id = as.factor(substr(person, 1, 1))
  l$age = as.numeric(substr(person, 2, 3))
  l$salary = as.numeric(substr(person, 4, 7))
  dt = rbind(dt, as.data.frame(l))
}
close(dat5)
dt

iris_ <- read.table('http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data',sep=',')
iris_

write.table(dt, "dat6.txt")
cat("g297000", file = "dat5.txt", append = T)
x <- file("Introduction to Statistical Programming/data/dat5.txt", 'a')
writeLines("g297000", x)
close(x)


x <- file("Introduction to Statistical Programming/data/dat5.txt", 'r')
readLines(x); close(x)



