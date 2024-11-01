res = str
n = 0
total = 0

while res != "":
    res = input("digita um numero ->")
    if res != "":
        res = int(res)
        total += res
        n += 1
        res = str(res)

print("a média é :", total / n)