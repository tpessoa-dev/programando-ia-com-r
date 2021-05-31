View(airquality)
length(airquality)


summary(airquality)

head(airquality,n=10)

set.seed(10)
index <- sample(1:nrow(airquality), 10)
index

airquality[index,]

# Resposta professora
dim(airquality)
summary(airquality)
head(airquality, n=10)
set.seed(20)
linhas.idx<-seq_len(nrow(airquality))
linhas.sample<-sample(linhas.idx,10)
airquality[linhas.sample,]
