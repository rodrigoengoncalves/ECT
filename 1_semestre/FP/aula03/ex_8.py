def intersects(a, b, c, d):
    if a < c <= b or a < d <= b:
        return True
    else:
        return False

def main():
    a = int(input("a= "))
    b = int(input("b= "))
    c = int(input("c= "))
    d = int(input("d= ")) 

    n = intersects(a, b, c, d)

    if n:
        print("pertense")
    else:
        print("nao pertense")

main()  