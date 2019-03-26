-- Title: PhysicsAndCollisions
-- Name: Your Name
-- Course: ICS2O/3C
-- This program does physics.



-- making the background
local backgroundImage = display.newImageRect("Images/bkg.png", 2048, 1536)

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

local beam = display.newImage("Physics/beam.png", 345, 299)
