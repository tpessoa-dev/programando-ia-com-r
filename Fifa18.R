library(DBI)
library(RPostgres)
library(dplyr)
#Conecta no DB
con <- dbConnect(Postgres(), host="35.225.23.89", dbname= "fiapbi", 
                   user="iauser", password="iauser", port=55432)
#Busca Dados
jogadores<-dbGetQuery(con, "SELECT * FROM futebol.players")
habilidades<-dbGetQuery(con, "SELECT * FROM futebol.habilities")
#Desconecta DB
dbDisconnect(con)

#Junta Tabelas
jogadores %>% 
  inner_join(habilidades, by="ID") %>% 
  subset(league =="Spanish Primera División") %>% 
  select(name,dribbling, acceleration)-> spain.2d

with(spain.2d,
plot(x=dribbling,y=acceleration)
)
#outro jeito de plotar
#plot(x=spain.2d$dribbling,y=spain.2d$acceleration)


mycluster=spain.2d %>% 
  select(dribbling,acceleration) %>% kmeans(x=.,centers=4)

with(spain.2d,
     plot(x=dribbling,y=acceleration, col=mycluster$cluster)
)
points(mycluster$centers,col=4:1, pch=4,cex=2)


plot(x=1:30, pch=1:30)

#Gerando Gráfico em 3D
library(DBI)
library(RPostgres)
library(dplyr)
#Conecta no DB
con <- dbConnect(Postgres(), host="35.225.23.89", dbname= "fiapbi", 
                 user="iauser", password="iauser", port=55432)
#Busca Dados
jogadores<-dbGetQuery(con, "SELECT * FROM futebol.players")
habilidades<-dbGetQuery(con, "SELECT * FROM futebol.habilities")
#Desconecta DB
dbDisconnect(con)

#Junta Tabelas
jogadores %>% 
  inner_join(habilidades, by="ID") %>% 
  subset(league =="Spanish Primera División") %>% 
  select(name,dribbling, acceleration,long_passing)-> spain.3d

mycluster3d=spain.3d %>% 
  select(dribbling,acceleration,long_passing) %>% kmeans(x=.,centers=4)

with(spain.3d,
     plot(spain.3d[,-1], col=mycluster3d$cluster)
)
points(mycluster3d$centers,col=4:1, pch=4,cex=2)


#Grafico 2D

plot_ly(data = spain.3d,
        x = ~dribbling, y = ~acceleration,z= ~long_passing,
        text = ~name,
        type = 'scatter', mode ='markers',
        color=mycluster$cluster)


#Grafico 3D

mycluster3d=spain.3d %>% 
  select(dribbling,acceleration,long_passing) %>% kmeans(x=.,centers=4)

with(spain.3d,
     plot(spain.3d[,-1], col=mycluster3d$cluster)
)
points(mycluster3d$centers,col=4:1, pch=4,cex=2)

plot_ly(data = spain.3d,
        x = ~dribbling, y = ~acceleration,z= ~long_passing,
        text = ~name,
        type = 'scatter3d', mode ='markers',
        color=mycluster3d$cluster)

#Resposta do professor

plot_ly(data = spain.3d,
        x = ~dribbling, y = ~acceleration, z = ~long_passing,
        text = ~name,
        type = 'scatter3d', mode ='markers',
        color=mycluster3d$cluster)

#Modelos de Cluster
jogadores %>% 
  inner_join(habilidades, by="ID") %>% 
  subset(league =="Spanish Primera División") %>% 
  select(name,dribbling, acceleration)-> spain.2d
k=12
mycluster=spain.2d %>% 
  select(dribbling,acceleration) %>% kmeans(x=.,centers=k)

with(spain.2d,
     plot(x=dribbling,y=acceleration, col=mycluster$cluster)
)
points(mycluster$centers,col=4:1, pch=4,cex=2)
