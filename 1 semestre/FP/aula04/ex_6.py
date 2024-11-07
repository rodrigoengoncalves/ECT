def leibnizPi4(n):
    leib = 0
    total = 0
    for i in range(0,n):
        leib = ((-1)**i)/(2*i + 1)
        print(i," ",leib)
        total += leib
    print(total)
        

def recolha_dados():
    n = int(input("digita um numero ->"))
    return n

def main():
    dados = recolha_dados()
    leibnizPi4(dados)

main()