# Exercise 5 on "How to think like a computer scientist", ch. 11.

import turtle

def main():
    screen = turtle.Screen()
    t = turtle.Turtle()

    # Use t.up(), t.down() and t.goto(x, y)

    # Put your code here
    file = open("drawing.txt", "r")

    x = ""
    y = "" 
    for line in file:
        list = line.split()
        if list[0] == 'UP':
            t.up()
        elif list[0] == 'DOWN':
            t.down()
        else:
            x = int(list[0])
            y = int(list[1])
            
            t.goto(x,y)

    # Wait until window is closed
    screen.mainloop()


if __name__ == "__main__":
    main()

