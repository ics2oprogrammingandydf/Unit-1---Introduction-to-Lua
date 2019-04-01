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

------------------------------------------------------ Functions--------------------------------------------------------------------------------\

-- this function that makes the mole appears in a random X y position on the screen before calling the Hide Function
function PopUp( )

	---CHoosing random postion on the screen between 0 and the size of the screen
	mole.x = math.random( 0, display.contentWidth )
	mole.y = math.random( 0, display.contentHeight )
	mole.isVisible = true

end

--this function calls the popup function after 3 seconds
function PopUpDelay( )
	timer.performWithDelay( 3000, PopUp )
end

--this function makes the mole invisible and then calls the PopUpDelay function
function Hide( )

	--Changing Visibilty
	mole.isVisible = false

end

--This function starts the game
function GameStart( )
	PopUpDelay
end

-- this function increments the score only if the mole is clicked. It then displays the new score
function Whacked( event )

	--If touch phase just started
	if (event.phase == "began") then


	end

end

----------------------------------------------------Event Listener------------------------------------------
-- I add the event listener to the moles so that if the mole i stouched, the whacked function is called
mole:addEventListener( "touch", Whacked )

-------------------------------------------------Start the game-----------------------------------------------------
