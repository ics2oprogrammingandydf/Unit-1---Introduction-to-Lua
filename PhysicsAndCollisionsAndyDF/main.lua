-- Title: PhysicsAndCollisions
-- Name: Your Name
-- Course: ICS2O/3C
-- This program does physics.



-- making the background
local bkg = display.newImageRect("Images/bkg.png", 2048, 1536)

 -- send to back
 bkg:toBack()

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

display.setDefault()

--load physics
local physics = require("physics")

--start physics
physics.start()
--------------------------------------------------------------------
-- Objects
--------------------------------------------------------------------
--ground
local ground = display.newImage("Physics/ground.png", 514, 750)

	-- Chage the width to be the same as the screen
	ground.width = display.contentWidth

	--add to physics
	physics.addBody(ground, "static", { friction=0.5, bounce=0.8})
--------------------------------------------------------------------

local beam = display.newImage("Physics/beam_long.png", 345, 299)

-- rotate the beam
beam:rotate(45)

--send the beam to the back layer

 --add the physics
 physics.addBody(beam, "static", {friction=0.5, bounce=0.3})

--------------------------------------------------------------------
-- Functions
--------------------------------------------------------------------

local function firstBall()
	--create the first ball
	local ball1 = display.newImage("Physics/super_ball.png", 0, 0)

	--add to physics
	physics.addBody(ball1, {density=0.1, friction=0.5, bounce=0.5, radius=25})
end

--------------------------------------------------------------------
local function secondBall()
	local ball2 = display.newImage("Physics/super_ball.png", 0, 0)

	--adding physics
	physics.addBody(ball2, {density=1.0, friction=0.5, bounce=0.3, radius=12.5})
end

--------------------------------------------------------------------
-- TIMER DELAYS - call each function after the given millisecond
timer.performWithDelay ( 0, firstBall)
timer.performWithDelay ( 500, secondBall)