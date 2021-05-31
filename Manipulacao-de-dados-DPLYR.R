library(dplyr)

# Carrega a partir de DB na nuvem
con <- DBI::dbConnect(RPostgres::Postgres(), host = "35.225.23.89",
                      dbname = "fiapbi", user = "iauser", port = 55432,
                      password = rstudioapi::askForPassword("Database PWD"))
starwars <- RPostgres::dbGetQuery(con, "SELECT * FROM public.starwars")

# Carrega a partir de arquivo
read.csv(file="https://storage.googleapis.com/ds-publico/starwars.csv") -> starwars


#Criando nova coluna
s2 <- mutate(starwars,imc = mass / ((height / 100) ^ 2) )

view(s2)


head(starwars)

starwars %>% head(.,4)
4 %>% head(starwars,.)
starwars %>% head(4)

#Filter+View com pipe
starwars %>%
  filter(species == "Droid") %>% 
  View()

#Sem pipe
View(filter(starwars,species=='Droid'))

#Craindo coluna
starwars %>%
  mutate(starwars,imc = mass / (height / 100) ^ 2)
  filter(species == "Droid") %>% 
  View()
  
#Manipulando BR Flights
  BrFlights2 %>%
    mutate(Partida.Atraso=Partida.Real-Partida.Prevista,
           Chegada.Atraso=Chegada.Real-Chegada.Prevista) %>% 
    filter(Companhia.Aerea == "AZUL")->Azul
    
  
#Select   
  starwars %>%
    select(name, ends_with("color"))

  
  starwars %>%
    select(name, ends_with("color"),height,2:4,sex:homeworld) %>% 
    View()
  
  
#Manipulando BRFlights3
  
BrFlights2 %>%
    filter(Companhia.Aerea == "AZUL") %>% 
    mutate(Partida.Atraso=Partida.Real-Partida.Prevista,
           Chegada.Atraso=Chegada.Real-Chegada.Prevista) %>% 
    select(Voos:Partida.Real,Partida.Atraso,Chegada.Prevista:LatOrig)->Azul
   View(Azul)  

   
#Arrange
   starwars %>%
     arrange(desc(mass)) %>% View

#Arrange no BRFlights
   
BrFlights2 %>%
   filter(Codigo.Tipo.Linha !="Internacional") %>% 
  #filter(Codigo.Tipo.Linha ="Nacional" | Codigo.Tipo.Linha ="Regional") Opção
     mutate(Chegada.Atraso=Chegada.Real-Chegada.Prevista) %>% 
     arrange(desc(Chegada.Atraso)) %>% 
     head(100) %>% 
     View()

#Rename
rename(starwars,nome = name, altura=height, massa = mass)




   