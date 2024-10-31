segundos = int(input("escreve o numero de segundos -> "))

horas = segundos // 60**2

segundos = segundos % 60**2

minutos = segundos // 60

segundos = segundos % 60

print("{}:{}:{}".format(horas, minutos, segundos))
