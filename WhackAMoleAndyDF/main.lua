-- Title: WhackAMole
-- Name: Your Name
-- Course: ICS2O/3C
-- This program places a random object on the screen. if the user clicks on it in time
-- the score increases by 1.

display.setStatusBar(display.HiddenStatusBar)

local bkg = display.newRect( 0, 0, display.contentWidth, display.contentHeight)
	display.setDefault("background", 153/255, 0/255, 0/255)

	-- setting the position
	bkg.anchorX = 0
	bkg.anchorY = 0
	bkg.x = 0
	bkg.y = 0

-- creating the mole
local mole = display.newImage ( "Images/mole.png" , 0, 0 )
	mole:scale (0.3333333333333333333333333333333333333333333333333333333333, 0.3333333333333333333333333333333333333333333333333333333333)
	
	--setting the position
	mole.x = display.contentCenterX
	mole.y = display.contentCenterY
	mole.isVisible = false

