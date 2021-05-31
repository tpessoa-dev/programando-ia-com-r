#Machine Learning

#Obtendo os dados
# Carrega a partir de DB na nuvem
con <- dbConnect(Postgres(), host = "35.225.23.89",
                 dbname = "fiapbi", user = "biuser", port = 55432,
                 password = "biuser")

houseboston.history <- dbGetQuery(con, "SELECT*FROM houseboston.history")
houseboston.newhouses <- dbGetQuery(con, "SELECT*FROM houseboston.newhouses LIMIT 2000")
houseboston.newhouses_full <- dbGetQuery(con, "SELECT*FROM houseboston.newhouses")
dbDisconnect(con)


install.packages("randomForest")
install.packages("tree")
library(randomForest)
library(tree)

minha.formula= MEDV~.
#modelo de regressao Random Forest(Elthon)
boston.modelo<-randomForest(formula=minha.formula,data=houseboston.history)
#Modelo de Regressao Linear multivariado(Regina)
boston.modelo2<-lm(formula=minha.formula,data=houseboston.history)

predict(boston.modelo,houseboston.history)->pred.h.1
predict(boston.modelo2,houseboston.history)->pred.h.2

View(cbind(pred.h.1,pred.h.2))


avaliacao <-cbind(houseboston.history,pred.h.1,pred.h.2)
#Resposta Turma
avaliacao[,"Erro.M1"]<-avaliacao$pred.h.1-avaliacao$MEDV

#Resposta professor
avaliacao<- avaliacao %>% mutate(Erro.M1=pred.h.1-MEDV,
                                 Erro.M2=pred.h.2-MEDV)


#Erro Relativo
avaliacao<-avaliacao %>% 
  mutate(Erro.M1=pred.h.1-MEDV,
         Erro.M2=pred.h.2-MEDV,
         ErroR.M1=Erro.M1/MEDV,
         ErroR.M2=Erro.M2/MEDV)
