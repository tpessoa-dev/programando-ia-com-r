#Conectar no DB

library(RPostgres)
library(DBI)

#MySQL
con <- dbConnect(MySQL(), user='elthon',
                 password='xxxxxxx', host='localhost')
resultado <- dbGetQuery(con, 'SELECT * FROM clientes')
dbDisconnect(con)

#PostGres
#Conectando no Servidor
con <- dbConnect(RPostgres::Postgres(), host="35.225.23.89", dbname="fiapbi", user="iauser", password="iauser", port=55432)
comando_sql<- "SELECT* FROM leadscore.pesquisaclientes"
dbGetQuery(con, comando_sql)

dbGetQuery(con, comando_sql)->clientes
dbDisconnect(con)
View(clientes)
#Quantos clientes temos na tabela?
#Qual o salário médio anual dos clientes?
summary(clientes)
#Variavel com espaço ,usar crase `conteudo1 conteudo2`
aggregate(`Salario Estimado`~Sexo,clientes,mean)


