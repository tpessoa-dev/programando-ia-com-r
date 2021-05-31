library(lubridate)

v<- dmy(01112018:01112021)

v_quinta<-v+(5-wday(v))

v_quinta[wday(v)>5]<-v_quinta[wday(v)>5+ddays(7)]

v_acao_gracas<-v_quinta+dweeks(3)
v_black<-v_acao_gracas+ddays(1)

v_black
