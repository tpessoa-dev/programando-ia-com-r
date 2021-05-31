#Anotações Aula 3
#Data e Hora

a<-list(valor1="texto",
        valor2=12345,
        valor3=3243L)
a$valor1
a$valor2



dia_texto <- "28/09/2017 T 18:51:30"
dia_date  <- as.Date(dia_texto,format="%d/%m/%Y T %H:%M:%S",tz="America/Sao_Paulo")
dia.time1 <- as.POSIXct(dia_texto,format="%d/%m/%Y T %H:%M:%S",tz="America/Sao_Paulo")
dia.time2 <- as.POSIXlt(dia_texto,format="%d/%m/%Y T %H:%M:%S",tz="America/Sao_Paulo")

dia_date
dia.time1
dia.time2
unclass(dia_date)
unclass(dia.time1)
unclass(dia.time2)

dia.time1$year
dia.time2$year


Sys.time
Sys.Date
Sys.timezone
as.Date

strptime("Janeiro 10, 2012 10:40", "%B %d, %Y %H:%M")
class(t)

BrF$Partida.Atraso3 <- as_hms(BrF$Partida.Atraso )
library(lubridate)

ymd("20110604")
mdy("06-04-2011")
dmy("04/06/2011")
ymd_hms("2018-04-23T19:02:13")
dmy_hms("23/04/2018 19:03:14")


multiplica.doisn<- function(n1,n2){
  return(n1*n2)
}
multiplica.doisn(4,5)



a = 3
lockBinding('a', env = globalenv())
a = 4
rm(a, envir = globalenv())

a = 5
lockBinding('a', env = globalenv())
bindingIsLocked('a', env = globalenv())

a = 6
unlockBinding('a', env = globalenv())
bindingIsLocked('a', env = globalenv())
a = 7

