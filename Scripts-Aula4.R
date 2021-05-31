
#diretorio de trabalho
setwd()
getwd()

#boa pratica
if(!file.exists('data')){
  dir.create('data')
}

file.url = 'https://storage.googleapis.com/ds-publico/IE1-04.xlsx'
file.local = file.path('D:/Tiago/OneDrive/Documentos/Programando-IA-com-R/data', basename(file.url))
download.file(url = file.url, destfile = file.local , mode='wb')


file_baixar<-function(file.url){
  file.local = file.path('D:/Tiago/OneDrive/Documentos/Programando-IA-com-R/data', basename(file.url))
  download.file(url = file.url, destfile = file.local , mode='wb')
}

file_baixar('https://storage.googleapis.com/ds-publico/Copas.csv')
file_baixar('https://storage.googleapis.com/ds-publico/Copas-Partidas.csv')
file_baixar('https://storage.googleapis.com/ds-publico/Copas-Jogadores.csv')
file_baixar('https://storage.googleapis.com/ds-publico/BrFlights2.RData')
file_baixar('https://storage.googleapis.com/ds-publico/cameras.baltimore.xlsx')
file_baixar('https://storage.googleapis.com/ds-publico/BI/Data-Comercial.xlsx')
file_baixar('https://storage.googleapis.com/ds-publico/BI/Data-Custos.xlsx')
file_baixar('https://storage.googleapis.com/ds-publico/BI/Data-Expedicao.xlsx')

# Resposta Vitor Conde
url.download = c('https://storage.googleapis.com/ds-publico/Copas.csv',
                 'https://storage.googleapis.com/ds-publico/Copas-Partidas.csv',
                 'https://storage.googleapis.com/ds-publico/Copas-Jogadores.csv',
                 'https://storage.googleapis.com/ds-publico/BrFlights2.RData',
                 'https://storage.googleapis.com/ds-publico/cameras.baltimore.xlsx',
                 'https://storage.googleapis.com/ds-publico/BI/Data-Comercial.xlsx',
                 'https://storage.googleapis.com/ds-publico/BI/Data-Custos.xlsx',
                 'https://storage.googleapis.com/ds-publico/BI/Data-Expedicao.xlsx')

baixa_no_data <- function(url.download) {
  if(!file.exists('data')){
    dir.create('data')
  }
  for (url in url.download){
    file.local = file.path('./data', basename(url))
    download.file(url = url, destfile = file.local , mode='wb')
    print("Arquivo baixado")
    print(url)
  }
  
}

baixa_no_data(url.download)

#Import Excel =Data Comercial
Data_Comercial <- read_excel("Data-Comercial.xlsx", 
                               +     col_types = c("text", "text", "date", 
                                                   +         "date", "text", "text", "text", "text", 
                                                   +         "text", "text", "text", "text", "numeric", 
                                                   +         "numeric", "numeric"))
View(Data_Comercial)

#Resposta
summary(Data_Comercial$Vendas)






