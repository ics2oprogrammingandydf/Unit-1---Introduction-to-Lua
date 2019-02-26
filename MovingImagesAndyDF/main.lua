-- Title: MovingObjects
-- Name: Andy Du-frigstad
-- Course: ICS2O/3C
-- This program moves a image across the screen and then makes it fade out. I also added another object that moves in a different direction as well as a background image

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--global variables
scrollSpeed = 3

--background image with width and height
local backgroundImage = display.newImageRect("images/background.png", 2048, 1536)

--character image with the width and height
local beetleship = display.newImageRect("images/beetleship.png", 200, 200)

--set the image to be transparent
beetleship.alpha = 0

--set initial x and y of the beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

--Function:MoveShip
--Input; this function accepts and event listner
--Output: none
--Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	--add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed
	--cvhange the transparency of the ship every thime it moves so that it fades out
	beetleship.alpha = beetleship.alpha + 0.01
end

--moveShip will de called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

----------------------------------------------------------------------------------
--global variables
local scrollSpeed = -3

--character image with the width and height
local octopus = display.newImageRect("images/octopus.png", 200, 200)

--set the image to be transparent
octopus.alpha = 1

--set initial x and y of the octopus
octopus.x = 1024
octopus.y = display.contentHeight/1.5

--Function:MoveShip
--Input; this function accepts and event listner
--Output: none
--Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	--add the scroll speed to the x-value of the ship
	octopus.x = octopus.x + scrollSpeed
	--cvhange the transparency of the ship every thime it moves so that it fades out
	octopus.alpha = octopus.alpha - 0.0000000000001
end

--moveShip will de called over and over again
Runtime:addEventListener("enterFrame", MoveShip)
