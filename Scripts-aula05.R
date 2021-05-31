
#Base Plot - parabola quadrática
x <- -10:10
plot( x = x, y = x**2, main = 'Parabola', type='l')
plot( x = x, y = x**2, main = 'Parabola', type='p')
plot( x = x, y = x**2, main = 'Parabola', type='b')
plot( x = x, y = x**2, main = 'Parabola', type='o')
plot( x = x, y = x**2, main = 'Parabola', type='h')
plot( x = x, y = x**2, main = 'Parabola', type='s')

#Plot básico - Análise de tendência
View(cars)

head(cars)
summary(cars)
plot( x= cars$speed, y = cars$dist)

#x= causa <=> y= consequencia

#Plot Simples
plot(cars)


with(cars,
     ls())
a=1
ls()
