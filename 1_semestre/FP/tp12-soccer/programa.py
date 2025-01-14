def ler_ficheiro(file_name):
    equipas = []
    with open(file_name, "r") as file:
        for line in file:
            equipa = ()
            line = line.strip()
            line = line.split(",")
            equipa = (line[0],line[1],line[2],line[3],line[4],line[5],line[6])
            equipas.append(equipa)

    return equipas
def country(pais):
    ranking = []
    clubes = []
    score = []

    equipas = ler_ficheiro("cc.csv")
    for i in equipas:
        if i[2] == pais:
            ranking.append(i[0])
            clubes.append(i[1])
            score.append(i[3])

    print("CLUBES       RANKING        SCORE")
    for i in range(0,len(clubes)):
        print("{}       {}      {}".format(clubes[i],ranking[i], score[i]))
    return ranking, clubes, score
def the_creator(file_name):

    pais = input("pais? ->")
    
    rank = country(pais)[0]
    clubes = country(pais)[1]
    score = country(pais)[2]

    with open(file_name, "w") as file:
        file.write("CLUBES       RANKING        SCORE\n")
        for i in range(0, len(rank)):
            file.write("{}      {}      {}\n".format(clubes[i], rank[i], score[i]))
def list_to_dic(teams):
    dic = {}
    for team in teams:
        if not(team[2] in dic):
            dic[team[2]] = []
        dic[team[2]].append(team[1])
    return dic
def mais_rank(teams):
    t = teams[0]
    for team in teams:
        if int(team[0]) > int(t[0]):
            t = team
    return t
def found_club(club_name):
    clubes = ler_ficheiro("cc.csv")
    
    found = False
    
    for i in clubes:
        if club_name == i[1]:
            t = i
            found = True
            break
        
    if found == False:
        print("nao foi encontrado nenhum clube com esse nome")
    return i
def media_ranks():
    final_dic = {}

    dic = list_to_dic(ler_ficheiro("cc.csv"))
    for i in dic.keys():
        s = 0
        x = 0
        for j in dic[i]:
            c = found_club(j)
            x += 1
            s += int(c[0])
        m = s/x
        final_dic[i] = m
    
    
    for p in sorted(final_dic.values(), reverse=True):
        print(p)
    
    return final_dic


def main():
    print(media_ranks())

    
main()