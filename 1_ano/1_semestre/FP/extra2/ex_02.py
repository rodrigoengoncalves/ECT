def formatar_linha(linha):
    linha = linha.strip()
    linha = linha.split(",")



def tabela(jornada):
    with open("Jogos.csv", "r") as file:
        linhas = file.readlines()
        numero_linhas = []
        for i in range((int(jornada)*9-1)-8,int(jornada)*9-1):
            numero_linhas.append(i)

        with open("jornada{}.csv".format(jornada), "r") as file_apostas:
            apostas = file_apostas.readlines()
            print("Jornada{}".format(jornada))
            for i in range(1,10):
                casa = formatar_linha(linhas[numero_linhas[i-1]])[1]
                fora = formatar_linha(linhas[numero_linhas[i-1]])[2]
                casa_result = formatar_linha(linhas[numero_linhas[i-1]])[3]
                fora_result = formatar_linha(linhas[numero_linhas[i-1]])[4]
                aposta = formatar_linha(apostas)[1]
                if  (casa_result - fora_result > 0 and aposta == "1") or (casa_result - fora_result == 0 and aposta == "x") or (casa_result - fora_result < 0 and aposta == "2"):
                    x = "CERTO"
                else:
                    x = "ERRADO"


                print("{}     {}  {}-{} {}        :{}   ({})".format(i,casa, casa_result, fora_result, fora, aposta,x ))



def apostar():
    save_aposta = []
    while True:
        jornada = input("Jornada? ")
        existe_jornada = False
        with open("Jornadas.csv", "r") as file:
            for line in file:
                line = line.strip()
                line = line.split(",")
                if line[0] == jornada:
                    existe_jornada = True
                    while True:
                        aposta = input("{} vs {}".format(line[1], line[2]))
                        if aposta == "1" or aposta == "x" or aposta == "2":
                            save_aposta.append(aposta)
                            break 
                        else:
                            print("resposta invalida")
            if existe_jornada:
                break
            else:
                print("jornada nao encontrada")
    with open("jornada{}.csv".format(jornada),"w") as file:
        for i in range(0, len(save_aposta)):
            file.write("{}, {}".format(i+1, save_aposta[i]) + "\n")
    tabela(jornada)
def main():
    apostar()


main()