def divisao(n):
    numbers =  [1]
    for i in range(2,n):
        if n % i == 0:
            numbers.append(i)
    print(numbers)
    return numbers

def Ndeficiente(n):
    t = 0
    for i in range(0, len(n)):
        t += n[i]
    return t

n = 12



if Ndeficiente(divisao(n)) > n: 
    print(n, "é um numero deficiente")
else:
    print(n, "nao é um numero deficiente")