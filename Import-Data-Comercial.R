#Import Excel =Data Comercial
Data_Comercial <- read_excel("Data-Comercial.xlsx", 
                             +     col_types = c("text", "text", "date", 
                                                 +         "date", "text", "text", "text", "text", 
                                                 +         "text", "text", "text", "text", "numeric", 
                                                 +         "numeric", "numeric"))
View(Data_Comercial)

#Resposta
summary(Data_Comercial$Vendas)

#Sumarização por grupos
aggregate(Data_Comercial, list(Data_Comercial$Estado),mean, na.rm=T)

View(aggregate(Data_Comercial, list(Data_Comercial$Estado),mean, na.rm=T))

#Formula
aggregate(Vendas ~ Estado, Data_Comercial, mean)

View(aggregate(Vendas ~ Estado, Data_Comercial, mean))

#Formula
f1<-Vendas~Estado+Segmento
View(aggregate(f1,Data_Comercial,mean))

#Vendas por categoria
f2<-Vendas~Categoria
aggregate(f2,Data_Comercial,mean)
View(aggregate(f2,Data_Comercial,mean))

#Desconto Médio por Segmento
f3<-Desconto~Segmento
aggregate(f3,Data_Comercial,mean)
View(aggregate(f3,Data_Comercial,mean))
