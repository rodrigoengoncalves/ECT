# Complete o programa!

# a)
def loadFile(fname, lst):
    file = open(fname, "r")
    n = 1
    for line in file:
        lista = []
        x = lista.append(line.split("\t"))
        print(lista)
        lst.append((n,x))
        n += 1
    #print(lst)


    
# b) Crie a função notaFinal aqui...
...

# c) Crie a função printPauta aqui...
...

# d)
def main():
    lst = []
    # ler os ficheiros
    loadFile("school1.csv", lst)
    loadFile("school2.csv", lst)
    loadFile("school3.csv", lst)
    
    # ordenar a lista
    ...
    
    # mostrar a pauta
    ...


# Call main function
if __name__ == "__main__":
    main()


