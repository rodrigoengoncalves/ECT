

max = 0
min = 0 
soma = 0 
cont = 0
media = 0


def entrada_de_dados():
    n = 1
    first = True
    while n > 0:
        n = int(input("digite um numero positivo: "))
        if n > 0:
            if not first:
                if n > max:
                    max = n
                if n < min:
                    min = n
                soma += n

                cont += 1

                media = soma / cont
            else:
                max = n
                min = n
                soma = n
                media = n
                cont = 1
                first = False
        else:
            break
    return(max, min, soma, cont, media)

def apresentar_dados(a):
    print(f"maximo:{a[0]} minimo:{a[1]} soma:{a[2]} contagem:{a[3]} media:{a[4]}")

def main():
    dados = entrada_de_dados()
    apresentar_dados(dados)

main()