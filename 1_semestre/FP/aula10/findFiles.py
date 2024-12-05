import os
#OBTER EXTENÇAO DO FICHEIRO ->os.path.splitext(d)
def printDirFiles(d):
    lst = os.listdir(d)
    for fname in lst:
        path = os.path.join(d, fname)
        if os.path.isfile(path):
            ftype = "FILE"
        elif os.path.isdir(path):
            ftype = "DIR"
        else:
            ftype = "?"
        print(ftype, path)
    return


def findFiles(d, ext):
    # Complete...
    lst = os.listdir(d)
    for fname in lst:
        path = os.path.join(d, fname)
        if os.path.isfile(path) and os.path.splitext(path)[1] == ext:
            ftype = "FILE"
            print(ftype, path)
        
        elif os.path.isdir(path):
            findFiles(d+os.path.splitext(path)[0], ext)
    return


def main():
    print("Testing printDirFiles('..'):")
    printDirFiles("..")

    print("\nTesting findFiles('.', '.py'):")
    lst = findFiles(".", ".py")
    print(lst)
#    assert isinstance(lst, list)

    print("\nTesting findFiles('..', '.csv'):")
    lst = findFiles("..", ".csv")
    print(lst)

if __name__ == "__main__":
    main()

