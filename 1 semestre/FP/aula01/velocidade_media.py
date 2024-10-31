v1 = float(input("vel ocidade média da primeira viagem -> "))

v2 = float(input("velocidade média da segunda viagem -> "))

t1 =  1 / v1
t2 = 1 / v2

vm = 2 / (t1 + t2)

print("a velocidade média da viagem completa é {}".format(vm))