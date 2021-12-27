# 1
# length가 주어지면 by의 전달 여부
# by가 Null -> length 보고 
f1 <- function(from = 1, to, by = NULL, length = NULL, cumulative = F){
  if (is.null(by)) { 
    if(is.null(length)){ # 둘 다 NULL이라서 by = 1로 계산
      result <- NULL
      if(from < to){
        for (i in from:to){
          result <- c(result, i)
        }
      } else {
          for (i in to:from){
            result <- c(result, i)
          }
      }
    } else { # length만 주어진 경우
      print("only length")
      result <- NULL
      if(from < to){
        distance = (to-from)/(length-1)
        start <- from
        repeat{
          result <- c(result, start)
          start <- start+distance
          if(start > to) break
        }
      } else {
        distance = (from-to)/(length-1)
        start <- from
        repeat{
          result <- c(result, start)
          start <- start-distance
          if(start < to) break
        }
      }
    }
  } else {
    # by가 가 주어짐
    # by와 length로 인한 error case done
    if(!is.null(length)){
      print("Error")
      return ()      
    } else {
      # 여기는 length가 없어서 by로 계산 go
      if(from < to){
        result <- NULL
        repeat{
          result <- c(result, from)
          from <- from + by
          if(from > to) break
        }
      } else {
        result <- NULL
        repeat{
          result <- c(result, from)
          from <- from - by
          if(from < to) break
        }
      }
    }
  }
  
  # cumulative case done
  if(cumulative== T) result <- cumsum(result)
  return (result)
}
# length, by no
f1(to = 10, cumulative = T)
f1(to = -10)
# only length
f1(from = 10, to = 1, length = 10)
f1(to= 10, from = 1, length = 10)

# only by
f1(from = 1, to = 10, by = 3)
f1(to = 1, from = 10, by = 3)

# with two
f1(to = 10, by = 10, length = 10)





# 2
f2 <- function(dist){
  if(!(dist %in% c("Normal", "Poisson"))){
    print('check the distributional setting: consider ("Normal", "Poisson", or "Exponential")')
    return()
  }
  
  if (dist == "Normal"){
    repeat{
      par1 <- readline("mean: ")  
      par2 <- readline("variance: ")
      if(par2 > 0){
        break
      } 
      cat("give proper inputs for", dist)
    }
    print("mean, var ok")
    layout(matrix(1:4, nrow = 1))
    size <- c(3, 5, 10, 30)
    colors <- c("red", "yellow", "green", "blue")
    for(i in 1:4){
      result <- NULL
      for(j in 1:1000)
        result <- c(result, mean(rnorm(size[i], mean = as.numeric(par1), sd = as.numeric(par2))))
      if(i == 2 || i == 3)
        hist(result, col = colors[i], freq = F, ylim = c(0, 1.5), main = "The CLT is tested:")
      else if(i ==3)
        hist(result, col = colors[i], freq = F, ylim = c(0, 1.5), main = "Distribution")
      else 
        hist(result, col = colors[i], freq = F, ylim = c(0, 1.5), main = '')
      lines(density(result), lty = 2, lwd = 3)
      
    }
  } 
  if (dist == "Poisson") {
    repeat{
      par1 <- readline("mean: ")
      if(par1 > 0) {
        sample <- "rpois(size[i], lambda = par1)"
        break
      }
      cat("give proper inputs for", dist)
    }
    print("mean ok")
    layout(matrix(1:4, nrow = 1))
    size <- c(3, 5, 10, 30)
    colors <- c("red", "yellow", "green", "blue")
    for(i in 1:4){
      result <- NULL
      for(j in 1:1000)
        result <- c(result, mean(rpois(size[i], lambda = as.numeric(par1))))
      hist(result, col = colors[i], freq = F, ylim = c(0, 1.5))
      lines(density(result), lty = 2, lwd = 3)
      # if(i == 1) legend(c("A", "B", "C", "D"), fill = c("red", "blue", "green", "yellow"))
    }
  }
  

  
  
  return ()

}
f2("Normal")
f2("Poisson")







