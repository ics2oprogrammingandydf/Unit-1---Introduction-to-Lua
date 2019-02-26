-- Title: AreaOfRectangleAndCircle
-- Name: Andy Du-frigstad
-- Course: ICS2O/3C
-- This program displays a rectangle and shows its area

--create my local variables
local areaText
local textSize = 40
local myRectangle 
local widthOfRectangle = 500
local heightOfRectangle = 300
local AreaOfRectangle
local radiusOfCircle = 150
local myCircle
local pi = 3.14
local AreaOfCircle

--set the background colour of my screen. remember that colours are between 0 and 1.
display.setDefault("background", 153/255, 0/255, 0/255)

--to remove status bar
display.setStatusBar(display.HiddenStatusBar)

--draw the rectangle that is half the width and height of the scren size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

--anchor the rectangle in the top left corner of the screen and set it's (X,Y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0



myRectangle.x = 50
myRectangle.y = 50

-- set the width of the border.
myRectangle.strokeWidth = 20

-- set the colour of the rectangle.
myRectangle:setFillColor(255/255, 255/255, 0/255)

-- set the colour of the border
myRectangle:setStrokeColor(204/255, 204/255, 0/255)

-- calculate the area 
AreaOfRectangle = widthOfRectangle * heightOfRectangle

-- write the area on the screen. take into consideration the size of font when positioning it on the screen
areaText = display.newText("the area of this rectangle with a width of \n"..
widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " ..
AreaOfRectangle .. "pixels².", 0, 0, Courier, textSize)

-- anchor the text and set it's (x,y) position.
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/2

-- set the colour of the newText
areaText:setTextColor( 255/255, 255/255, 51/255)

-- draw the radius of the circle.
myCircle = display.newCircle(0, 0, radiusOfCircle)

-- anchor the circle in the top right corner of the screen and set it's (X,Y) position.
myCircle.anchorX = 0
myCircle.anchorY = 0
myCircle.x = 600
myCircle.y = 20

-- set the width of the border for the circle.
myCircle.strokeWidth = 15

-- set the color of the circle
myCircle:setFillColor(255/255, 255/255, 0/255)

-- set the color of the border of the circle.
 myCircle:setStrokeColor(204/255, 204/255, 0/255)

 --calculate the area
 AreaOfCircle = radiusOfCircle * radiusOfCircle * pi

 -- write the area on the screen. take the consideration the size of the font when positioning it on the screen
areaText2 = display.newText("the area of a circle with a radius of \n"..
radiusOfCircle .. " is " ..
 AreaOfCircle .. "pixels².", 0, 0, Courier, textSize)

--anchor the text
areaText2.anchorX = 0
areaText2.anchorY = 0
areaText2.x = 20
areaText2.y = display.contentHeight/1.50

--set the colour of the text
areaText2:setTextColor( 255/255, 255/255, 51/255)
