matrix (5,4,4)*2-> tabela.pares
View(tabela.pares)


matriz<-matrix(1:32,nrow=4,ncol=4)*2
View(matriz)

mtcars
class(mtcars)


mtcars$carb
mtcars$mpg


tabela_teste=mtcars
tabela_teste$coluna_nova<-tabela_teste$mpg+tabela_teste$cyl
View(tabela_teste)

head(mtcars)
head(mtcars,8)
summary(mtcars)
aggregate(mtcars, by=list(mtcars$cyl),FUN=mean)

#Sequencias
1:80

seq(1,80, by=4)

#Sequencia para varrer tabela

linhas=nrow(BrFlights2)

seq(1, linhas)

#Sequencias para  Varrer objetos usar along
seq_along(BrFlights2)

seq(along.with=c(1,676))

#Teste Null
tabela_teste$hp<- NA
tabela_teste$wt<- NULL

#Filtrando Dados das estruturas (subset)

vet<-78:90
vet[3]
vet[0] #não existe
vet[1] #primeira posição do vetor
vet[-2]#não existe posição negativa , o -n busca todos menos o valor n
class(vet)

#filtrando com sequencias
vet[3:5]

vet[c(F,T,F,T,T,T)] #filtrando com boolean

