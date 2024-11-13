# Example: finding and counting leap years
# JMR 2019, 2024

def isLeapYear(year):
   return year%4 == 0 and year%100 != 0 or year%400 == 0


def printLeapYears(year1, year2):
    year = year1
    while True:
        if year > year2:
            break    
        if isLeapYear(year):
            print(year)
        year += 1
         
printLeapYears(2005, 2030)     
         

def numLeapYears(year1, year2):
   """Return the number of leap years in range [year1, year2[."""
   # Try to use a for loop!
# ...


def nextLeapYear(year):
   """Return the first leap year after the given year."""
   # Which kind of loop is more appropriate?



def listLeapYears(year1, year2):
   """Return a list of leap years in range [year1, year2[."""
   lst = []
   # To add a value to the list, use:
   # lst.append(value)
   # (We'll get back to lists later in the course.)
   
   return lst


# MAIN PROGRAM:
def main():
   printLeapYears(1870, 1921)

   x = numLeapYears(1679, 2079)
   print("In [1679, 2079[ there are", x, "leap years")

   print(f"{nextLeapYear(2024) = }")  # 2028
   print(f"{nextLeapYear(1893) = }")  # 1896
   print(f"{nextLeapYear(1896) = }")  # 1904

   print(listLeapYears(1970, 2002))


if __name__ == "__main__":
#    main()
    pass