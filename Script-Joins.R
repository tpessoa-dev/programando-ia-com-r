#Carregando Dados

con <- DBI::dbConnect(RPostgres::Postgres(), host="35.225.23.89", dbname="fiapbi", 
                      user="biuser", password="biuser", port=55432)

RPostgres::dbGetQuery(con, "SELECT * FROM jn.publishers") -> publishers
RPostgres::dbGetQuery(con, "SELECT * FROM jn.superheroes") -> superheroes

DBI::dbDisconnect(con)

#InnerJoin
superheroes %>% inner_join(publishers)
superheroes %>% inner_join(publishers, by='publisher')

#LeftJoin
superheroes %>% left_join(publishers)

#RightJoin
superheroes %>% right_join(publishers)

#FullJoin - Left+Right
superheroes %>% full_join(publishers)


#SemiJoin - Existente
superheroes %>% semi_join(publishers)

#AntiJoin - Não Existente
superheroes %>% anti_join(publishers)
