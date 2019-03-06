-- Title: TouchAndReact
-- Name: Andy Du-frigstad
-- Course: ICS2O/3C
-- This program does something when I click on the button.

--set the background colour.
display.setDefault ("background", 153/255, 0/255, 0/255)
--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--create the blue button, set it's position and make it visible
local blueButton = displaynewImageRect("Images/Fast Button Inactive@2x.png", 198, 96)