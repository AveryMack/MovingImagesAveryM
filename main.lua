-- Title: MovingObjects
-- Name: Your Name
-- Course: ICS2O/3C
-- This program displays a beetleship moving across the screen as well as another 
-- object moving in a different direction 
-------------------------------------------------------------------------------------

-- Your code here

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed = 3

-- background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 600, 600)

-- set the image to be transparent
beetleship.alpha = 0

-- set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- set the rotation speed variable
local rotationSpeed = 3

-- Function: MovieShip
-- Input: this function accepts an event listener
-- Output: none 
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	-- add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed
	-- change the transparency of the ship everytime it moves so that it fades out 
	beetleship.alpha = beetleship.alpha + 0.01

    -- make the beetleship
	beetleship.rotation = beetleship.rotation + rotationSpeed

	-- make the heart grow 
	beetleship.width = beetleship.width - scrollSpeed
	beetleship.height = beetleship.height - scrollSpeed
end 

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

-- global variables
scrollSpeed2 = 4

-- character image with width and height
local rocketship = display.newImageRect("Images/rocketship.png", 200, 200)

-- set the initial x and y position of rocketship
rocketship.x = 1000
rocketship.y = display.contentHeight/2

-- make the rocketship visible
rocketship.alpha = 1

-- change the direction of the rocketship
rocketship:scale(-1,1)

-- Function: MovieShip
-- Input: this function accepts an event listener
-- Output: none 
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveRocket(event)
	-- add the scroll speed to the x-value of the ship
	rocketship.x = rocketship.x - scrollSpeed2

	-- add the scroll speed to the x-value of the ship
	rocketship.y = rocketship.y - scrollSpeed2

	-- change the transparency of the ship everytime it moves so that it fades out 
	rocketship.alpha = rocketship.alpha - 0.00001
end 

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveRocket)

-- set the scroll speed of the heart
scrollSpeed3 = 4

-- character image with width and height
local heart = display.newImageRect("Images/healthheart.png", 200, 200)

-- set the initial x and y position of heart
heart.x = display.contentWidth/2
heart.y = 1000

-- make the heart visible
heart.alpha = 1

-- change the direction of the heart
heart:scale(-1,1)

-- Function: MovieShip
-- Input: this function accepts an event listener
-- Output: none 
-- Description: This function adds the scroll speed to the x-value of the heart
local function MoveHeart(event)
	-- add the scroll speed to the x-value of the ship
	heart.y = heart.y - scrollSpeed3

	-- change the transparency of the ship everytime it moves so that it fades out 
	heart.alpha = heart.alpha - 0.001

	-- make the heart grow 
	heart.width = heart.width + scrollSpeed3
	heart.height = heart.height + scrollSpeed3
end 

-- MoveHeart will be called over and over again
Runtime:addEventListener("enterFrame", MoveHeart)

