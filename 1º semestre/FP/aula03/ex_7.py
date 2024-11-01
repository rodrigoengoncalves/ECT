def tax(r):
    if r <= 1000:
        return (0.1*r)
    elif 1000 < r <= 2000:
        return  (0.2*r-100)
    elif 2000 < r:
        return (0.3 * r - 300)
    
def main():
    r = float(input("digitar um numero: "))
    print(tax(r))
main()