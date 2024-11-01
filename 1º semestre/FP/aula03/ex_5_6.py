def max_number(x):
    if x[0] > x[1]:
#        print(x[0] ,"é o maior numero")
        y = x[0]
    else:
#        print(x[1] ,"é o maior numero")
        y = x[1]
    return y

def max_number2(x, y):
 
    if y > x[2]:
        print(y ,"é o maior numero")
    else:
        print(x[2] ,"é o maior numero")

    

def recolha_dados():
    x = int(input("primeiro numero: "))
    y = int(input("segundo numero: "))
    z = int(input("terceiro numero: "))
    return x,y,z

def main():
    dados = recolha_dados()
    n = max_number(dados)
    max_number2(dados, n)

    


main()