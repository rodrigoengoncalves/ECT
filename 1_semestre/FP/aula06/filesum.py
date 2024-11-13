from tkinter import filedialog

def main():
    # 1) Pedir nome do ficheiro (experimente cada alternativa):
    name = input("File? ")                                  #A
    #name = filedialog.askopenfilename(title="nums.txt") #B
    
    # 2) Calcular soma dos números no ficheiro:
    total = fileSum(name)
    
    # 3) Mostrar a soma:
    print("Sum:", total)


def fileSum(filename):
    soma = 0.0
    fileobj = open(filename, "r")

    for line in fileobj:
        soma += float(line)
    
    
    return soma
if __name__ == "__main__":
    main()

