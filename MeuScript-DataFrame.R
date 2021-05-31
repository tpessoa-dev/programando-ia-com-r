vet_log<- c(TRUE,TRUE,FALSE,FALSE)
vet_int<- c(1L,2L,3L,4L)
vet_num<- c(6,7,8,9)
vet_text<- c("Rock","Blues","Metal","Pop")
vet_imag<- c(2i,5i,7i,8i)

minha_lista <- list(vet_log, vet_int, vet_num, vet_text, vet_imag)

minha_matriz<-matrix(c(seq(2,32,by=2)), nrow = 4)

linhas <-c("L1","L2","L3","L4")

df <- data.frame(vet_log,vet_int,vet_num,vet_text,vet_imag, row.names = linhas)
View(df)