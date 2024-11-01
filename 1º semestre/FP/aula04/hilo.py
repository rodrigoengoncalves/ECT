# Complete the code to make the HiLo game.

import random

def playHiLo():
    # Pick a random number between 1 and 100, inclusive
    secret = random.randrange(1, 101);
    resp = int

    print("I picked a number between 1 and 100. Can you guess it?")
    # put your code here
    
    while secret != resp:
        resp = int(input("adivinha o numero -> "))
        if resp > secret:
            print("valor muito alto.")
        elif resp < secret:
            print("valor muito baixo.")
        else:
            print("PARABENS adivinhaste o numero secreto !!!")

playHiLo()

