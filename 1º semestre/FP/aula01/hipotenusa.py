import math

c1 = int(input("escreva o primeiro cateto -> "))
c2 = int(input("escreva o segundo cateto -> "))

h = c1**2 + c2**2

a1 = math.atan2(c1, h)
a2 = math.atan2(c2, h)

print(a2)