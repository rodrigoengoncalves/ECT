# return masked string
def maskify(cc):
    result = ""
    print(len(cc))
    if len(cc) <= 4:
        result = cc
    else:
        result = ("#" * (len(cc) - 4)) + cc[len(cc)-4:len(cc)]
        
    print(result)   

maskify("322")