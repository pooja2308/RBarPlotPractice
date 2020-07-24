modelyear <- seq(2000,2020,length.out = 20)
 
appleHeight <- runif(20,10,35)


macbook <- vector()

for (i in appleHeight) {
  macbook <- c(macbook,i/4)
}

applewatch <- vector()

for (i in appleHeight) {
  applewatch <- c(applewatch,i/4)
}

iPhones <- vector()

for (i in appleHeight) {
  iPhones <- c(iPhones,i/2)
}


total <- rbind(macbook ,applewatch, iPhones)


 barplot(total, names.arg = ceiling(modelyear), 
         main = "Apple Products",
         xlab = "Sell",
         ylab = "Sell record",
         col = c("red","green","Yellow"),
         horiz = FALSE,
         beside = FALSE
)
 
 legend("topleft",
        c("MacBooks","AppleWatch","iPhone"),
        fill = c("red","green","Yellow")
 )
 