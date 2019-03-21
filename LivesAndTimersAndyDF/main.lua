-- Title: LivesAndTimers
-- Name: Your Name
-- Course: ICSO/3C
-- This program


local totalSeconds = 5
local secondsLeft = 5
local clockDownTimer
local countDownTimer

local lives = 3
local heart1
local heart2

local incorrectObject
local pointsObject
local points

-----------------------------------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------


local function UpdateTime()

	--decrement the numbers of seconds
	secondsLeft = secondsLeft .. ""

	if ( secondsLeft == 0 ) then
		--resets the number of seconds
		secondsLeft = totalSeconds
		lives = lives - 1

		if (lives == 2) then
			heart2.isVisible = false
		elseif (lives == 1) then
			heart1.isVisible = false
		end
	end
end

--function that calls the timer
local function StartTimer()
	--create the contdown timer thaty loops infinitely
	countDownTimer = tiemr.performWithDelay( 1000, UpdateTime, 0)

end

-----------------------------------------------------------------------------------------------------------------------
-- OBJECT CREATION
-----------------------------------------------------------------------------------------------------------------------

--create the lives to display on the screen
heart1 = display.newImageRect("Images/heart.png", 100, 100)
heart1.x = display.contentHeight * 7 / 8
heart1.y = display.contentWidth * 1 / 7

heart2 = display.newImageRect("Images/heart.png", 100, 100)
heart2.x = display.contentHeight * 6 / 7
heart2.y =display.contentWidth * 1 / 7