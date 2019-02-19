-- Title: HelloWorld
-- Name: Andy Du-frigstad
-- Course: ICS2O/3C
-- This program displays Hello to the simulator and to the command terminal.
-------------------------------------------------------------------------------------------

--print "hello World" to the command terminal
print ("***Hellooooooooooooo!")

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--sets the background color
display.setDefault("background", 174/255, 169/255, 47/255)

--create a local variable
local textObject

--displays text on the screen at postion x = 500 and y = 500 with
--a default font stle and font size of 50
textObject = display.newText( "hello, Comrade" , 500, 375, nil, 60)

--sets colour of the text
textObject:setTextColor(137/255, 43/255, 43/255)

--My name displayed below the text.
textObject = display.newText(" By: Andy Du-frigstad", 500, 300, nil, 50)

--set the rext colour of my name and By.
textObject:setTextColor(71/255, 121/255, 131/255)

--print The text colour changing on the command terminal
print ("***")

--what the program does and display it on the ipad
textObject = display.newText( "this program displays tex in different colours" , 500, 450, nil, 50)

--changing the colour of what the program does text
textObject:setTextColor(71/255, 121/255, 131/255)