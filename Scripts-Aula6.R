download.file(url="https://storage.googleapis.com/ds-publico/Matrizes.RData",
              destfile = "Matrizes.RData", mode="wb")

load("~/Matrizes.RData")

1 + 3 
1:5 + 3
matrix(1:9, 3) + 3
1 * 2 
1:5 * 2
matrix(1:9, 3) * 2

#Pratica Multiplicacao de Matrizes
View(vendas)
View(anuncios)
View(midia)

#adicionando o BIAS, usar cbind ou mutate do dplyr
A<-(as.matrix(cbind(1,anuncios)))
B<-(as.matrix(midia))

vendas_estimadas <-A%*%B
View(vendas_estimadas)


diag(1:9)

runif(10, min = 0, max=100)




set.seed(1)
amostra = c( "T", "R", "I", "A", "N", "G", "U", 
               "L", "O", "S")
sample(x = amostra, replace = FALSE)
sample(x = amostra, replace = TRUE)
sample(x = amostra, size = 5)
sample(x = amostra, size = 10, replace = TRUE, 
         prob = c(1, 1, 5, 1, 1, 1, 1, 1, 1, 5))


set.seed(2)
runif(10,min = 0,max = 100)

