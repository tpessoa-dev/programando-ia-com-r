#Filtrar mtcars
tabela<-mtcars
tabela[tabela$mpg >= 15,]

#Filtrar BrFlights
Voos.Azul = BrFlights2[BrFlights2$Companhia.Aerea=='AZUL',]
Voos.Azul = Voos.Azul[order(Voos.Azul$Partida.Real),]
View(Voos.Azul)
