set.seed(20)
x <- rnorm(100, mean = 0,sd=1)
erro<-rnorm(100,mean = 0,sd=2)
y<-0.5+2*x+erro

library(plotly)
plot_ly( x = x, y = y, type = "scatter" )
