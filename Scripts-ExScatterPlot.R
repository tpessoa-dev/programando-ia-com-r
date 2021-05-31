plot(x = airquality$Wind, y = airquality$Ozone)

l = lm(data = airquality, formula = Ozone ~Wind) 
x0 = min(airquality$Wind)
x1 = max(airquality$Wind)
y0 = l$coefficients['(Intercept)'] + x0 * l$coefficients['Wind']
y1 = l$coefficients['(Intercept)'] + x1 * l$coefficients['Wind']


lines(x = c(x0, x1), y = c(y0, y1), type = 'l', col='red')



#Reposta Professor
plot(x=airquality$Wind, y=airquality$Ozone)
r<- lm(data=airquality, formula=Ozone~Wind)

abline(r,col='green')
