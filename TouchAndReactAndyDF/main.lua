-- Title: TouchAndReact
-- Name: Andy Du-frigstad
-- Course: ICS2O/3C
-- This program does something when I click on the button.

--set the background colour.


--hide the status bar
display.setStatusBar(display.HiddenStatusBar)
display.setDefault ("background", 153/255, 0/255, 0/255)
--create the blue button, set it's position and make it visible
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png", 198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true

--creating the red button, set it's position and make it invisible 
local redButton = display.newImageRect("Images/Fast Button Active@2x.png", 198, 96)
redButton.x = display.contentHeight/1.5
redButton.y = display.contentWidth/2.68
redButton.isVisible = false

--reate text Object, set it's position and make it invisible 
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (204/255, 204/255, 0/255)
textObject.isVisible = false

--making the second Image
local Dude = display.newImageRect("Images/Saradomin_armour_set_(lg)_equipped.png", 96, 198)
Dude.x = display.contentHeight/2
Dude.y = display.contentWidth/2
Dude.isVisible = false

--adding the sound
local BellSound = audio.loadSound( "Sounds/zapsplat_bell_service_desk_press_x5_18040.mp3" )
local BellChannel

-- Function:BlueButtonListener
-- Input: touch listener
-- Output: None
--Descrpition: when the blue Button os clicked, it will make the text appear with the red button, and make the blue button disappear
local function BlueButtonListener(touch)
	if(touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
		Dude.isVisible = true
		BellChannel = audio.play(BellSound)
	end

	if (touch.phase == "ended") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
		Dude.isVisible = false
		
	end
end

-- Function:RedButtonListener
-- Input: touch listener
-- make the red button disappear and make the blue button appear
local function RedButtonListener(touch)
	if(touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
	end

	if (touch.phase == "ended") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
		Dude.isVisible = false
	end
end

--add the respective listeners to each object
blueButton:addEventListener("touch", BlueButtonListener)
redButton:addEventListener("touch", RedButtonListener)
