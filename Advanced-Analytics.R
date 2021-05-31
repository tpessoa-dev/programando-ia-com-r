#Advanced Analytics

#Conecta no DB
con <- dbConnect(Postgres(), host="35.225.23.89", dbname= "fiapbi", 
                 user="iauser", password="iauser", port=55432)
#Busca Dados
jogadores<-dbGetQuery(con, "SELECT * FROM futebol.players")
habilidades<-dbGetQuery(con, "SELECT * FROM futebol.habilities")
valores<-dbGetQuery(con, "SELECT * FROM futebol.financial")
#Desconecta DB
dbDisconnect(con)


#Junta Tabelas
jogadores %>% 
  inner_join(habilidades, by="ID") %>%
  inner_join(valores, by="ID") %>%
View()
select(name,)-> 
