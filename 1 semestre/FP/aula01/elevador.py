andares = int(input("quantos andares tem o predio? "))
moradores = int(input("quantos moradores possui cada andar? "))

distancia_ano = andares * (3 + (3*andares)) * moradores * 365
segundos = distancia_ano
horas = segundos / 60**2
print("O elevador vai percorrer ao longo do ano {} metros e irá trabalhar {} horas".format(distancia_ano, horas))