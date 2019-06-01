#R Lab 4.10

#4.10.1 European Stock Indices

data(EuStockMarkets)
mode(EuStockMarkets)
class(EuStockMarkets)
plot(EuStockMarkets)

pdf("EuStocks.pdf", width = 6, height = 5)
plot(EuStockMarkets)
graphics.off()

logR = diff(log(EuStockMarkets))
plot(logR)

plot(as.data.frame(logR))

par(mfrow=c(2, 2))
for(i in colnames(logR))
{
  print(i)
  qqnorm(logR[ ,i], datax = T, main = i)
  qqline(logR[ ,i], datax = T)
  print(shapiro.test(logR[ ,i]))
}

n=dim(logR)[1]
q_grid=(1:n)/(n+1)
df_grid = c(1, 4, 6, 10, 20, 30)
index.names = dimnames(logR)[[2]]
for(i in 1:4){
  # dev.new() 
  par(mfrow = c(3, 2)) 
  for(df in df_grid){
    qqplot(logR[,i], qt(q_grid,df),
           main = paste(index.names[i], ", df = ", df) )
    abline(lm(qt(c(0.25, 0.75), df = df) ~
                quantile(logR[,i], c(0.25, 0.75))))
  }
}

library("fGarch")
x=seq(-0.1, 0.1,by = 0.001)
par(mfrow = c(1, 1)) 
df=5
mad_t = mad(logR[ , 1],
            constant = sqrt(df / (df - 2)) / qt(0.75, df))
plot(density(logR[ , 1]), lwd = 2, ylim = c(0, 60))
lines(x, dstd(x, mean = mean(logR[,1]), sd = mad_t, nu = df),
      lty = 5, lwd = 2, col = "red")
lines(x, dnorm(x, mean = mean(logR[ ,1]), sd = sd(logR[ ,1])),
      lty = 3, lwd = 4, col = "blue")
legend("topleft", c("KDE", paste("t: df = ",df), "normal"),
       lwd = c(2, 2, 4), lty = c(1, 5, 3),
       col = c("black", "red", "blue"))