def isPrime(n):
    m = 0
    for i in range(1, 101):
        if n%i == 0:
            m += 1
    if m > 2:
        return False
    else:
        return True



print(isPrime(9))