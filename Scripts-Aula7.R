#AValiação de Kmeans


modelo = kmeans(spain.2d[,c('dribbling','acceleration')], centers = 4)
rbind( cbind('betweenss:',  modelo$betweenss),
       cbind('totss:',  modelo$totss),
       cbind('quality:',  modelo$betweenss / modelo$totss ))

plot(spain.2d[,c('dribbling','acceleration')],
     col = modelo$cluster,
     pch = 20, cex = 2)
points(modelo$centers, col = rev(seq_along(modelo$centers)),
       bg=seq_along(modelo$centers), pch = 24, cex =1, lwd = 1)


#Kmeans versus k-medóids

library(cluster)

