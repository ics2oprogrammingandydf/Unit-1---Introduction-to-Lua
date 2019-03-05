-- Title: TouchAndDrag
-- Name: Andy Du-frigstad
-- Course: ICS2O/3C
<<<<<<< HEAD
--allows you to touch and drag images

--local Variables
local background = display.newImageRect("Images/background.png", 2048, 1536)

local girl2 = display.newImageRect("Images/girl2.png", 150, 150)
local girl2Width = girl2.width
local girl2Height = girl2.height


local girl1 = display.newImageRect("Images/girl1.png", 150, 150)
local girl2Width = girl1.width
local girl2Height = girl1.height

local girl5 = display.newImageRect("Images/girl5.png", 150, 150)
local girl5Width = girl5.width
local girl5Height = girl5.height

--my boolean variables
local alreadyTouchedGirl1 = false
local alreadyTouchedGirl2 = false
local alreadyTouchedGirl5 = false

--set the x and y of my girls ;) and octopus :(
girl1.x = 400
girl1.y = 500

girl2.x = 300
girl2.y = 200

girl5.x = 600
girl5.y = 600

--function: Girl2Listener
--Input: touch listener
--output: none
--description: when girl2 is touched, move her
local function Girl2Listener(touch)
	if (touch.phase == "began")then
		if (alreadyTouchedGirl1 == false) and (alreadyTouchedGirl5 == false) then
			alreadyTouchedGirl2 = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedGirl2 == true) ) then
	 girl2.x = touch.x
	 girl2.y = touch.y
	end

	if (touch.phase == "ended") then
	 alreadyTouchedGirl2 = false
	 alreadyTouchedGirl1 = false
	end
end

--add the respective listeners to each object
girl2:addEventListener("touch", Girl2Listener)

--function: Girl1Listener
--Input: touch listener
--output: none
--description: when girl1 is touched, move her
local function Girl1Listener(touch)
	if (touch.phase == "began")then
		if (alreadyTouchedGirl2 == false) and (alreadyTouchedGirl5 == false) then
			alreadyTouchedGirl1 = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedGirl1 == true) ) then
	 girl1.x = touch.x
	 girl1.y = touch.y
	end

	if (touch.phase == "ended") then
	 alreadyTouchedGirl1 = false
	 alreadyTouchedGirl2 = false
	end
end

--add the respective listeners to each object
girl1:addEventListener("touch", Girl1Listener)

--function: Girl5Listener
--Input: touch listener
--output: none
--description: when girl5 is touched, move her
local function Girl5Listener(touch)
	if (touch.phase == "began")then
		if (alreadyTouchedGirl2 == false) and (alreadyTouchedGirl1 == false) then
			alreadyTouchedGirl5 = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedGirl5 == true) ) then
	 girl5.x = touch.x
	 girl5.y = touch.y
	end

	if (touch.phase == "ended") then
	 alreadyTouchedGirl5 = false
	 alreadyTouchedGirl1 = false
	 alreadyTouchedGirl2 = false
	end
end

--add the listener
girl5:addEventListener("touch", Girl5Listener)
=======
-- This program allows you to touch and drag 2 images across the screen. it will also have a background.

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--local Variables
local background = display.newImageRect("Images/background.png", 2048, 1536)
local yellowGirl = display.newImageRect("Images/yellowGirl.png", 150, 150)
local yellowGirlWidth = yellowGirl.width
local yellowGirlHeight = yellowGirl.height
local BlueGirl = display.newImageRect("Images/blueGirl.png", 100, 100)
local blueGirlWidth = blueGirl
>>>>>>> 801e543bdd793cc79cceeda279babb3a7df5ed53
