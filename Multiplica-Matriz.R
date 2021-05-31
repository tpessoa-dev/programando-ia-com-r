M5<-M1*M3
M5

M6<-M3*M1
M6

M5==M6
all (M5==M6)


M7<-M1 %*% M4
M7
# dá erro em virtude do numero de colunas x linhas

M7<-M2%*%M4


M8<-M4 %*% M1
M8
M7==M8
