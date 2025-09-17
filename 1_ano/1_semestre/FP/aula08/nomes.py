def load_txt(name_file):
    file = open(name_file, 'r')
    return file

def ordenar_nomes(name_file):
    last_name = []
    first_name = []
    file = load_txt(name_file)
    lines = file.readlines()
    for i in lines:
        n = i.split()
        if n[0] != "Nome":
            LastName = n[len(n)-1]
            if LastName not in last_name:
                for j in lines:
                    m = j.split()
                    if m[len(m)-1] == LastName:
                        first_name.append(m[0])
                print("{} : {}".format(LastName, first_name))
                last_name.append(LastName)
                LastName = ""
                first_name = []
                

def main():
    ordenar_nomes('names.txt')


main()
 