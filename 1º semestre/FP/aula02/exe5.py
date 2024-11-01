#Um certo tarifário de telefone cobra 0.12 € por minuto, cobrado ao segundo após o
#primeiro minuto. Por exemplo, chamadas de 10 s, de 30 s ou de 60 s custam 0.12 €. Uma
#chamada de 90 s custa 0.12 (pelo primeiro minuto) + 0.06 (pelos restantes 30 s) = 0.18 €.
#Faça um programa que calcule o custo de uma chamada sabendo a duração em segundos.

preco = 0
segundos = int(input("digite os segundos da chamada: "))

if segundos > 60:
    segundos -= 60
    preco = (segundos * 0.06) / 30 + 0.12

else:
    preco = 0.12

print("o valor será {}".format(preco))