View(BrFlights2)
summary(BrFlights2)

Tabela_Manipulada = BrFlights2
fac_situacao.voo<- factor(Tabela_Manipulada$Situacao.Voo)
Tabela_Manipulada$Situacao.Fator<-fac_situacao.voo
unclass(Tabela_Manipulada$Situacao.Fator)


fac_codigo.tipo.linha<- factor(Tabela_Manipulada$Codigo.Tipo.Linha)
Tabela_Manipulada$Cod.Tipo.Linha.Fator<-fac_codigo.tipo.linha
unclass(Tabela_Manipulada$Cod.Tipo.Linha.Fator)


Tabela_Manipulada$Atraso_Chegada <- paste((as.numeric(Tabela_Manipulada$Chegada.Real - Tabela_Manipulada$Chegada.Prevista) / 60), 'minutos')

Tabela_Manipulada$Distancia_Euclidiana<- dist(Tabela_Manipulada$LatOrig,Tabela_Manipulada$LongOrig,Tabela_Manipulada$LatDest,Tabela_Manipulada$LongDest, method = "euclidean")


View(Tabela_Manipulada)
