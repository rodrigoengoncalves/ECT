def entrada_de_dados(min, max):
    while True:
        n = int(input("digite um numero: "))
        if n >= min and n <= max:
            break
    return(n)
def apresentar_tabela(n):
    for i in range(1,11,1):
        print("{} * {} = {}".format(n, i, i * n))

def main():
    dados = entrada_de_dados(1, 10)
    apresentar_tabela(dados)
main()
