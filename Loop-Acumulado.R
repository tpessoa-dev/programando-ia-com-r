AirPassengers
acumulador = 0
vetor_saida=c()
for (i in AirPassengers) {
  acumulador=acumulador+i
  vetor_saida=c(vetor_saida,acumulador)
}
vetor_saida



cumsum(AirPassengers)
