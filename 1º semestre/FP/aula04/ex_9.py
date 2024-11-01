def Fibonacci(n):
    f1 = 0
    f2 = 1
    fn = int

    for i in range(1, n+1):
        if i == 1:
            fn = f1
        elif i == 2:
            fn = f2
        else:
            fn = f1 + f2
            f1 = f2
            f2 = fn
        print(i, fn)
    print(f"na sequência de Fibonacci o {i} numero é {fn}")

Fibonacci(8)

