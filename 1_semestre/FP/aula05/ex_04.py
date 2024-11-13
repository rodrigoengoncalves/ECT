clubes = ["SLB", "SCP", "FCP", "ABC"]

def allMatches(clubes):
    comb = []
    for b in range(0, len(clubes)):    
        for i in range(0, len(clubes)):
            if clubes[b] != clubes[i]:
                comb.append((clubes[b], clubes[i]))
    return comb

print(allMatches(clubes))