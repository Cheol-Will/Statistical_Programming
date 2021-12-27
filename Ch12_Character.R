# Character----------------------------------

cat(1:3, 'asdf', 'qwer', sep = '')
a <- paste("asdf", "qwer", 'zxcv', sep = ', '); a
b <- paste("asdf", 1234, "qwer", sep = ', '); b
alpha1 <- cat(letters, sep = " "); alpha1
alpha2 <- paste(letters, sep = ', '); alpha2
c <- strsplit(b, ", "); c
x <- c('asdfqwer', 'zxcvasdf', 'aaaaa', 'gggggg')
d <- grep('asdf', x = x, value = F); d
e <- grep('asdf', x = x, value = T); e


q <- paste("KimCM", "KimJY", "KimHY", sep = "/"); q
w <- strsplit(q, "/"); w
# strsplit result: list
e <- grep("Kim", w[[1]], value = F); e
r <- grep("Kim", w[[1]], value = T); r


x <- c('asdfqwer', 'zxcvasdf', 'aaaaa', 'gggggg'); x
nchar(x)


# sprinf formating
sprintf("int: %d, fp: %f, str: %s", 123, 123.123, 'asdf')

sprintf("exp: %e", exp(1))
sprintf("exp: %E", exp(1))
print(3.141592e+02)
print(3.141592e-02)

# 2 significant figures
sprintf("pi: %.2f", pi)

# length 5
sprintf("pi: %5.1f", pi)

# length 2 -> 무시
sprintf("pi: %2.1f", pi)



# substr
substr("Kim CM", 1, 3)
x <- "asdf qwer zxcv"; substr(x, 6, 9)


# regexpr: first instance
regexpr("to", "Top to Bottom")

# gregexpr: all instances
gregexpr("to", "Top to to Bottom")


# regular expression
grep('[kKe]', c("KimCM", "KangJY", "HanHY", "LeePY"))
grep('a.e', c('place', 'pitcher', 'ace', 'catcher'))
grep("J.n", month.abb)
grep("c..r", c('place', 'pitcher', 'ace', 'catcher'))


grep('.', c('asdf', 'qwer', 'zx.cv'))
grep('\\.', c('asdf', 'qwer', 'zx.cv'))

extension <- function(fn, ext){
  # fn: file name
  # ext: file extension
  fn1 <- strsplit(fn, '\\.')
  ext1 <- length(fn1[[1]])
  return(fn1[[1]][ext1] == ext)
}
extension("asdf.csv", "csv")
extension("asdf.csv", 'txt"')

wd <- dir()
file <- NULL
for (i in 1:length(wd))
  if(extension(wd[i], "txt")) file <- c(file, wd[i])

file





















