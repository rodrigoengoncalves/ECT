# a)
def inputFloatList():
    lista = []
    while True:
        n = input("digita um numero para adicionar á lista ->")
        if n != "":
            lista.append(int(n))
        else:
            break
    return lista

#inputFloatList()

# b)

def countLower(lst, v):
    n = 0
    for i in range(0, len(lst)):
        if lst[i] < v:
            n += 1
    return n


#lista = [-1,-2,-3,-14,-5,-6,7]
#print(countLower(lista, 8))

# c)

def minmax(lst):
    n_max = lst[0]
    n_min = lst[0] 
    
    for i in range(0, len(lst)):
        if lst[i] > n_max:
            n_max = lst[i]
        if lst[i] < n_min:
            n_min = lst[i]
    return n_max, n_min
#print(minmax(lista))

def media(n1,n2):
    m = (n1+n2)/2
    return m

def main():
    lista = inputFloatList()
    extremos = minmax(lista)
    m = media(extremos[0],extremos[1])
    cont = countLower(lista, m)

    print("a lista é ", lista)
    print(" o max e o minimo sao ", extremos)
    print("a media desses valores é ", m)
    print("existem ", cont, "valores menores que ", m , "na lista")

main()