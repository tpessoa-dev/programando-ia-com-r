#Plot básico - Análise de tendência

f=dist~speed
minha.regressao = lm(data=cars,formula=f)
y.tend<-minha.regressao$coefficients
x=0
y=y.tend['(Intercept)']+ y.tend['speed']*x
print(paste(x,y))

View(minha.regressao)
minha.regressao$coefficients

minha.regressao = lm(data = cars, formula = dist ~speed)
y.tend = minha.regressao$coefficients
plot(cars)
x = cars$speed
lines(x = x, y = y.tend[1] + (x * y.tend['speed']),type = 'l', col='red')
lines(x = x, y = cbind(1, x) %*% y.tend,type = 'l', col='blue')

plot(cars)
abline(minha.regressao,col='green')

# inclusão de pontos
points(x=c(10,12,14), y=c(10,12,14), col='red')


#histogram
x <- -10:10
plot( x = x, y = x**2, main = 'Parabola', type='p')
hist(x**2)



#boxplot
summary(airquality)
boxplot(airquality)

boxplot(airquality$Temp)

boxplot(airquality,outline = F)
boxplot(airquality,outline = T)

airquality
