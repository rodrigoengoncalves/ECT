def fatorial(n):
    resul = n
    while n != 1:
        n -= 1
        resul = resul * n
    print(resul)

def recolha_dados():
    n = int(input("digita um numero que queres o fatorial ->"))
    return n

def main():
    dados = recolha_dados()
    fatorial(dados)

main()