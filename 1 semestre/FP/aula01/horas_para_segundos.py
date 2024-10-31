horas = int(input("horas: "))
minutos = int(input("minutos: "))
segundos = int(input("segundos: "))

segundos_finais = segundos + minutos*60 + horas * 60**2 
print(segundos_finais)