-- Title: TouchAndDrag
-- Name: Andy Du-frigstad
-- Course: ICS2O/3C
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
