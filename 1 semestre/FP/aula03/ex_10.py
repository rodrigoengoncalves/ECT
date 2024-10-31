def sec2hms(sec):
    h = sec//(60 **2)
    sec -= h**2
    m = sec // 60
    sec -= m * 60
    s = sec
    return h, m, s 



print(sec2hms(3601))
