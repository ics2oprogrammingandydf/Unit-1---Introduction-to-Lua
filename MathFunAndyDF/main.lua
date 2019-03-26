-- Title: MathFun
-- Name: Your Name
-- Course: ICS2O/3C
-- This program 
----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour.
display.setDefault("background", 153/255, 0/255, 0/255)

----------------------------------------------------------------------------------------------
--LOCAL VARIABLES
----------------------------------------------------------------------------------------------
-- create local variables
local questionObject
local correctObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer
local incorrectObject
local incorrectAnswer

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

----------------------------------------------------------------------------------------------
-- SOUNDS
----------------------------------------------------------------------------------------------

local correctSound = audio.loadSound( "Sounds/correctSound.mp3" )
local correctSoundChannel
local incorrectSound = audio.loadSound( "Sounds/wrongSound.mp3" )
local incorrectSoundChannel

----------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
----------------------------------------------------------------------------------------------


local function UpdateTime()

	--decrement the numbers of seconds
	secondsLeft = secondsLeft .. "5"

	if ( secondsLeft == 0 ) then
		--resets the number of seconds
		secondsLeft = totalSeconds
		lives = lives - 1
		if (lives == 0) then
			incorrectSoundChannel = audio.play(wrongSound)
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


local function askQuestion()
	randomOperator = math.random(1, 4)
	if ( randomOperator == 1) then
		--generate 2 random numbers between a max. and a min. number
			randomNumber1 = math.random(0, 10)
			randomNumber2 = math.random(0, 10)

			correctAnswer = randomNumber1 * randomNumber2

			--create the question in text
			questionObject.text = randomNumber1 .. " x " .. randomNumber2 .. " = "
	elseif ( randomOperator == 2) then
		--generate 2 random numbers between a max. and a min. number
		randomNumber1 = math.random(0, 10)
		randomNumber2 = math.random(0, 10)

		correctAnswer = randomNumber1 + randomNumber2

		--create the question in text
		questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "
	elseif ( randomOperator == 3) then
		randomNumber1 = math.random(0, 10)
		randomNumber2 = math.random(0, 10)

		correctAnswer = randomNumber1 / randomNumber2

		--create the question in text
		questionObject.text = randomNumber1 .. " ÷ " .. randomNumber2 .. " = "
	elseif (randomOperator == 4) then
		randomNumber1 = math.random(5, 10)
		randomNumber2 = math.random(0, 5)

		correctAnswer = randomNumber1 - randomNumber2

		--create the question in text
		questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = "
	end
end

-- making the local function that hides the text
local function HideCorrect()
	correctObject.isVisible = false
	askQuestion()
end

local function HideIncorrect()
	incorrectObject.isVisible = false
end

local function numericFieldListener( event )

	--user begins editing "numericField"
	if ( event.phase == "began" ) then

		--clear text field
		event.target.text = ""

	elseif ( event.phase == "submitted" ) then

		--when the answer is submitted (enter key is pressed) set user input to user's answer
		userAnswer = tonumber(event.target.text)

		-- if the users answer and correct answer are the same:
		if (userAnswer == correctAnswer) then
			correctObject.isVisible = true
			correctSoundChannel = audio.play(correctSound)
			timer.performWithDelay(200, HideCorrect)

			elseif (userAnswer +- correctAnswer) then
			incorrectObject.isVisible = true
			incorrectSoundChannel = audio.play(wrongSound)
			timer.performWithDelay(200, HideIncorrect)
		end
	end
end

-------------------------------------------------------------------------------------------
-- OBJECT CREATION
-------------------------------------------------------------------------------------------

--displays a question and set it's colour
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50 )
questionObject:setTextColor (240/255, 240/255, 0/255)

--create the correct text object and make it invisible
correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil,50 )
correctObject.isVisible = false

-- create the incorrect text Object and make it invisible
incorrectObject = display.newText( "Incorrect!", display.contentWidth/2, display.contentHeight*2/3, nil,50 )
incorrectObject.isVisible = false

--create numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80 )
numericField.inputType = "number"

heart1 = display.newImageRect("Images/Saradomin_armour_set_(lg)_equipped.png", 100, 100)
heart1.x = display.contentHeight * 7 / 8
heart1.y = display.contentWidth * 1 / 7

heart2 = display.newImageRect("Images/Saradomin_armour_set_(lg)_equipped.png", 100, 100)
heart2.x = display.contentHeight * 6 / 7
heart2.y =display.contentWidth * 1 / 7

-- adding the listener
numericField:addEventListener( "userInput", numericFieldListener)

pointsObject = display.newTextField()

----------------------------------------------------------------------------------------------
-- FUNCTION CALLS
----------------------------------------------------------------------------------------------

-- call the function to ask the question
askQuestion()
