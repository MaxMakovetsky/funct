f1 <- function() {
  setwd("C:/Projects/function")
  e1 <- new.env(parent = baseenv())
  assign("x",
         c(read.table("txt1.txt", sep = ",", header = FALSE)),
         envir = e1)
  e2 <- new.env(parent = baseenv())
  assign("x", 
         c(read.table("txt2.txt", sep = ",", header = FALSE)), 
         envir = e2)
  e3 <- new.env(parent = baseenv())
  assign("x", 
         c(read.table("txt3.txt", sep = ",", header = FALSE)), 
         envir = e3)
  e4 <- new.env(parent = baseenv())
  assign("x", 
         c(read.table("txt4.txt", sep = ",", header = FALSE)), 
         envir = e4) 
  e5 <- new.env(parent = baseenv())
  assign("x", 
         c(read.table("txt5.txt", sep = ",", header = FALSE)), 
         envir = e5)
  
  
  
  boxplot(c(0,1000))
 for (v in c(get("x", envir = e1),
             get("x", envir = e2),
             get("x", envir = e3),
             get("x", envir = e4),
             get("x", envir = e5))) 
    boxplot(v, 0,1, add = T)
  
  df <- data.frame(
    get("x", envir = e1),
    get("x", envir = e2),
    get("x", envir = e3),
    get("x", envir = e4),
    get("x", envir = e5)
  )
  df
}
f1()

