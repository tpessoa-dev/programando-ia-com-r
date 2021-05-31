library(magrittr)
library(dplyr)
library(leaflet)
library(magrittr)
library(dplyr)
library(leaflet)
unidade <- c("SP", "MG", "RJ","RS","SC")
latitude <- c( -23.5489,-19.8157,-22.9035,-30.0277,-27.5969)
longitude <- c(-46.6388,-43.9542,-43.2096,-51.2287,-48.5495)
fatura <- c("12M", "6M", "2M",'5M',"6M")

Filiais <- data.frame(unidade, latitude, longitude,fatura) %>% 

p <- leaflet(Filiais) %>%
  addTiles() %>%
  addProviderTiles("CartoDB.Positron")

p %>% addMarkers(~latitude, ~longitude,
                 popup = paste(Filiais$fatura) )


View(Filiais)


#### Resposta Professor
mapa<-leaflet(data=Filiais) %>% 
  addTiles() %>%
  addProviderTiles("CartoDB.Positron") %>% 
  addMarkers(~longitude,~latitude,group="MinhaEmpresa",
             popup = ~paste(unidade,"faturou",fatura),
             clusterOptions = markerClusterOptions())

mapa