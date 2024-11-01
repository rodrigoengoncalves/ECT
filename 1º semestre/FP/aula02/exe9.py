reprovado = False
ctp = float(input("nota final ctp -> "))
cp = float(input("nota final cp -> "))

nota_final = (ctp+cp)/2

if (ctp < 6.5 or cp < 6.5) and nota_final < 9.5:
    reprovado = True
    nota_final = 66

if reprovado:
    atpr = float(input("nota final ctp -> "))
    apr = float(input("nota final cp -> "))

print("a nota final é: {}".format(nota_final))
