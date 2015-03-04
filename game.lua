require "libraries/gamestate"
local cron = require "libraries/cron"

puzzle = Gamestate.new()

--The score, it goes up 1 for every movement. :P
local count = 1

--A trigger to stop the bell ringing over and over when you're on top of it.
local x = true

--A trigger to stop the score sound ringing over and over... and over and over.  It goes into your skull after a while.
local zip = true
local zip2 = true
local zip3 = true

--An animation to stop the animations and whatnot going when the escape menu is pulled
local escape = false
local escape_retry_button = true
local escape_levels_button = false
local escape_main_button = false

--Toggles for the win menu, similar to the escape menu
local win_menu = false
local win_menu_next_button = true
local win_menu_main_button = false
local win_menu_quit_button = false

local scoresies_1 = false

--Timers, solely for playing sounds
local timer = 70
local timer2 = 100
local timer3 = 70

--A trigger to not play an animation until the current animation is complete.
--Also used to stop animations when the win animation plays
movement = true
	
--you are entering, basically, the love.load() of this gamestate
--below is the coordinates for every level
function puzzle:enter(previous)
		
	
	if puzzle_1 == true then
		--Initial positions of the boy
		davidx = 62
		davidy = 126
		
		--Initial positions of the monkey
		monkeyx = 292
		monkeyy = 126
		
		--boxes.  8 by 240 just means that they're off screen
		box1_x = 8
		box1_y = 240
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 8
		box12_y = 240
		
		box13_x = 8
		box13_y = 240
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 62
		beery = 74
		
		bananasx = 292
		bananasy = 74
				
		losing_points = 1
		
	elseif puzzle_2 == true then
		davidx = 62
		davidy = 126
		
		monkeyx = 240
		monkeyy = 74
		
		box1_x = 8
		box1_y = 240
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 8
		box12_y = 240
		
		box13_x = 8
		box13_y = 240
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 10
		beery = 178
		
		bananasx = 240
		bananasy = 126
		
		losing_points = 2
		
	elseif puzzle_3 == true then
	
		davidx = 114
		davidy = 126
		
		monkeyx = 292
		monkeyy = 178
		
		box1_x = 114
		box1_y = 74
		
		box2_x = 62
		box2_y = 74
		
		box3_x = 10
		box3_y = 74
		
		box4_x = 10
		box4_y = 126
		
		box5_x = 10
		box5_y = 178
		
		box6_x = 344
		box6_y = 74
		
		box7_x = 292
		box7_y = 74
		
		box8_x = 240
		box8_y = 74
		
		box9_x = 240
		box9_y = 126
		
		box10_x = 240
		box10_y = 178
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 8
		box12_y = 240
		
		box13_x = 8
		box13_y = 240
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 114
		beery = 178
		
		bananasx = 344
		bananasy = 178
		
		losing_points = 3
		
	elseif puzzle_4 == true then
		davidx = 62
		davidy = 126
		
		monkeyx = 292
		monkeyy = 126
		
		box1_x = 10
		box1_y = 74
		
		box2_x = 10
		box2_y = 126
		
		box3_x = 10
		box3_y = 178
		
		box4_x = 62
		box4_y = 178
		
		box5_x = 114
		box5_y = 178
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 344
		box9_y = 126
		
		box10_x = 344
		box10_y = 178
		
		box11_x = 292
		box11_y = 74
		
		box12_x = 240
		box12_y = 74
		
		box13_x = 344
		box13_y = 74
		
		box14_x = 292
		box14_y = 178
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 62
		beery = 126
		
		bananasx = 240
		bananasy = 178
		
		losing_points = 4
		
	elseif puzzle_5 == true then
		davidx = 10
		davidy = 74
		
		monkeyx = 344
		monkeyy = 126
		
		box1_x = 10
		box1_y = 178
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 292
		box9_y = 126
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 8
		box12_y = 240
		
		box13_x = 8
		box13_y = 240
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 62
		beery = 74
		
		bananasx = 344
		bananasy = 74
		
		losing_points = 5
		
	elseif puzzle_6 == true then
		davidx = 10
		davidy = 74
		
		monkeyx = 344
		monkeyy = 178
		
		box1_x = 10
		box1_y = 126
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 8
		box12_y = 240
		
		box13_x = 8
		box13_y = 240
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 62
		beery = 178
		
		bananasx = 292
		bananasy = 178
		
		losing_points = 5
		
	elseif puzzle_7 == true then
		davidx = 10
		davidy = 126
		
		monkeyx = 240
		monkeyy = 126
		
		box1_x = 10
		box1_y = 74
		
		box2_x = 114
		box2_y = 74
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 292
		box10_y = 74
		
		box11_x = 292
		box11_y = 126
		
		box12_x = 8
		box12_y = 240
		
		box13_x = 8
		box13_y = 240
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 62
		beery = 74
		
		bananasx = 344
		bananasy = 74
		
		losing_points = 6
	elseif puzzle_8 == true then
		davidx = 10
		davidy = 74
		
		monkeyx = 240
		monkeyy = 126
		
		box1_x = 8
		box1_y = 240
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 344
		box11_y = 126
		
		box12_x = 8
		box12_y = 240
		
		box13_x = 8
		box13_y = 240
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 10
		beery = 74
		
		bananasx = 240
		bananasy = 178
		
		losing_points = 6
	elseif puzzle_9 == true then
		davidx = 10
		davidy = 74
		
		monkeyx = 292
		monkeyy = 74
		
		box1_x = 62
		box1_y = 126
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 292
		box10_y = 126
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 8
		box12_y = 240
		
		box13_x = 8
		box13_y = 240
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 10
		beery = 178
		
		bananasx = 344
		bananasy = 126
		
		losing_points = 8
		
	elseif puzzle_10 == true then
		davidx = 62
		davidy = 178
		
		monkeyx = 240
		monkeyy = 178
		
		box1_x = 62
		box1_y = 74
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 240
		box10_y = 74
		
		box11_x = 240
		box11_y = 126
		
		box12_x = 292
		box12_y = 74
		
		box13_x = 8
		box13_y = 240
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 114
		beery = 74
		
		bananasx = 344
		bananasy = 126
		
		losing_points = 6
	elseif puzzle_11 == true then
		davidx = 114
		davidy = 74
		
		monkeyx = 344
		monkeyy = 74
		
		box1_x = 8
		box1_y = 240
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 292
		box7_y = 126
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 8
		box12_y = 240
		
		box13_x = 8
		box13_y = 240
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 62
		beery = 126
		
		bananasx = 240
		bananasy = 178
		
		losing_points = 8
	elseif puzzle_12 == true then
		davidx = 10
		davidy = 74
		
		monkeyx = 240
		monkeyy = 74
		
		box1_x = 8
		box1_y = 240
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 292
		box9_y = 74
		
		box10_x = 292
		box10_y = 178
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 8
		box12_y = 240
		
		box13_x = 8
		box13_y = 240
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 62
		beery = 126
		
		bananasx = 344
		bananasy = 178
		
		losing_points = 8
	elseif puzzle_13 == true then
		davidx = 10
		davidy = 74
		
		monkeyx = 344
		monkeyy = 74
		
		box1_x = 62
		box1_y = 126
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 240
		box10_y = 74
		
		box11_x = 240
		box11_y = 126
		
		box12_x = 240
		box12_y = 178
		
		box13_x = 292
		box13_y = 126
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 10
		beery = 74
		
		bananasx = 344
		bananasy = 126
		
		losing_points = 12
	elseif puzzle_14 == true then
		davidx = 62
		davidy = 178
		
		monkeyx = 240
		monkeyy = 178
		
		box1_x = 8
		box1_y = 240
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 240
		box12_y = 126
		
		box13_x = 8
		box13_y = 240
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 10
		beery = 74
		
		bananasx = 292
		bananasy = 126
		
		losing_points = 5
	elseif puzzle_15 == true then
		davidx = 114
		davidy = 74
		
		monkeyx = 292
		monkeyy = 126
		
		box1_x = 10
		box1_y = 178
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 8
		box12_y = 240
		
		box13_x = 240
		box13_y = 74
		
		box14_x = 240
		box14_y = 178
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 62
		beery = 126
		
		bananasx = 344
		bananasy = 74
		
		losing_points = 9
	elseif puzzle_16 == true then
		davidx = 114
		davidy = 178
		
		monkeyx = 240
		monkeyy = 126
		
		box1_x = 114
		box1_y = 74
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 8
		box12_y = 240
		
		box13_x = 240
		box13_y = 74
		
		box14_x = 292
		box14_y = 74
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 62
		beery = 126
		
		bananasx = 344
		bananasy = 74
		
		losing_points = 12
	elseif puzzle_17 == true then
		davidx = 62
		davidy = 178
		
		monkeyx = 292
		monkeyy = 178
		
		box1_x = 114
		box1_y = 178
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 8
		box12_y = 240
		
		box13_x = 240
		box13_y = 126
		
		box14_x = 344
		box14_y = 178
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 114
		beery = 74
		
		bananasx = 344
		bananasy = 126
		
		losing_points = 8
	elseif puzzle_18 == true then
		davidx = 10
		davidy = 74
		
		monkeyx = 344
		monkeyy = 126
		
		box1_x = 8
		box1_y = 240
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 8
		box12_y = 240
		
		box13_x = 62
		box13_y = 126
		
		box14_x = 240
		box14_y = 126
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 10
		beery = 178
		
		bananasx = 240
		bananasy = 74
		
		losing_points = 10
	elseif puzzle_19 == true then
		davidx = 62
		davidy = 126
		
		monkeyx = 292
		monkeyy = 126
		
		box1_x = 10
		box1_y = 74
		
		box2_x = 114
		box2_y = 178
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 344
		box12_y = 74
		
		box13_x = 240
		box13_y = 178
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 62
		beery = 74
		
		bananasx = 344
		bananasy = 126
		
		losing_points = 5
	elseif puzzle_20 == true then
		davidx = 10
		davidy = 74
		
		monkeyx = 292
		monkeyy = 74
		
		box1_x = 62
		box1_y = 126
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 344
		box12_y = 74
		
		box13_x = 240
		box13_y = 74
		
		box14_x = 240
		box14_y = 178
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 62
		beery = 178
		
		bananasx = 292
		bananasy = 126
		
		losing_points = 11
	elseif puzzle_21 == true then
		davidx = 62
		davidy = 178
		
		monkeyx = 292
		monkeyy = 126
		
		box1_x = 10
		box1_y = 74
		
		box2_x = 114
		box2_y = 74
		
		box3_x = 114
		box3_y = 178
		
		box4_x = 10
		box4_y = 178
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 240
		box12_y = 74
		
		box13_x = 240
		box13_y = 126
		
		box14_x = 240
		box14_y = 178
		
		box15_x = 292
		box15_y = 178
		
		box16_x = 344
		box16_y = 178
		
		beerx = 62
		beery = 178
		
		bananasx = 344
		bananasy = 126
		
		losing_points = 4
	elseif puzzle_22 == true then
		davidx = 62
		davidy = 126
		
		monkeyx = 292
		monkeyy = 126
		
		box1_x = 10
		box1_y = 74
		
		box2_x = 10
		box2_y = 126
		
		box3_x = 10
		box3_y = 178
		
		box4_x = 62
		box4_y = 178
		
		box5_x = 114
		box5_y = 178
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 240
		box12_y = 74
		
		box13_x = 344
		box13_y = 74
		
		box14_x = 344
		box14_y = 178
		
		box15_x = 240
		box15_y = 178
		
		box16_x = 8
		box16_y = 240
		
		beerx = 62
		beery = 74
		
		bananasx = 240
		bananasy = 126
		
		losing_points = 7
	elseif puzzle_23 == true then
		davidx = 62
		davidy = 126
		
		monkeyx = 344
		monkeyy = 74
		
		box1_x = 10
		box1_y = 74
		
		box2_x = 62
		box2_y = 178
		
		box3_x = 114
		box3_y = 74
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 240
		box12_y = 178
		
		box13_x = 292
		box13_y = 74
		
		box14_x = 344
		box14_y = 178
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 10
		beery = 126
		
		bananasx = 292
		bananasy = 178
		
		losing_points = 7
	elseif puzzle_24 == true then
		davidx = 10
		davidy = 74
		
		monkeyx = 344
		monkeyy = 74
		
		box1_x = 62
		box1_y = 126
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 292
		box12_y = 74
		
		box13_x = 292
		box13_y = 126
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 114
		beery = 178
		
		bananasx = 292
		bananasy = 178
		
		losing_points = 14
	elseif puzzle_25 == true then
		davidx = 62
		davidy = 74
		
		monkeyx = 344
		monkeyy = 74
		
		box1_x = 62
		box1_y = 126
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 240
		box12_y = 74
		
		box13_x = 292
		box13_y = 74
		
		box14_x = 240
		box14_y = 126
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 10
		beery = 74
		
		bananasx = 292
		bananasy = 126
		
		losing_points = 15
	elseif puzzle_26 == true then
		davidx = 62
		davidy = 178
		
		monkeyx = 292
		monkeyy = 178
		
		box1_x = 114
		box1_y = 178
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 8
		box12_y = 240
		
		box13_x = 292
		box13_y = 126
		
		box14_x = 240
		box14_y = 178
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 10
		beery = 126
		
		bananasx = 344
		bananasy = 126
		
		losing_points = 14
	elseif puzzle_27 == true then
		davidx = 114
		davidy = 74
		
		monkeyx = 344
		monkeyy = 74
		
		box1_x = 114
		box1_y = 126
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 240
		box12_y = 178
		
		box13_x = 344
		box13_y = 126
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 62
		beery = 178
		
		bananasx = 292
		bananasy = 74
		
		losing_points = 11
	elseif puzzle_28 == true then
		davidx = 10
		davidy = 74
		
		monkeyx = 292
		monkeyy = 178
		
		box1_x = 10
		box1_y = 178
		
		box2_x = 114
		box2_y = 178
		
		box3_x = 114
		box3_y = 74
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 292
		box12_y = 74
		
		box13_x = 240
		box13_y = 178
		
		box14_x = 344
		box14_y = 178
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 62
		beery = 178
		
		bananasx = 240
		bananasy = 126
		
		losing_points = 9
	elseif puzzle_29 == true then
		davidx = 62
		davidy = 74
		
		monkeyx = 292
		monkeyy = 74
		
		box1_x = 62
		box1_y = 126
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 240
		box12_y = 126
		
		box13_x = 344
		box13_y = 74
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 10
		beery = 74
		
		bananasx = 292
		bananasy = 126
		
		losing_points = 11
	elseif puzzle_30 == true then
		davidx = 114
		davidy = 126
		
		monkeyx = 240
		monkeyy = 126
		
		box1_x = 62
		box1_y = 126
		
		box2_x = 8
		box2_y = 240
		
		box3_x = 8
		box3_y = 240
		
		box4_x = 8
		box4_y = 240
		
		box5_x = 8
		box5_y = 240
		
		box6_x = 8
		box6_y = 240
		
		box7_x = 8
		box7_y = 240
		
		box8_x = 8
		box8_y = 240
		
		box9_x = 8
		box9_y = 240
		
		box10_x = 8
		box10_y = 240
		
		box11_x = 8
		box11_y = 240
		
		box12_x = 292
		box12_y = 178
		
		box13_x = 8
		box13_y = 240
		
		box14_x = 8
		box14_y = 240
		
		box15_x = 8
		box15_y = 240
		
		box16_x = 8
		box16_y = 240
		
		beerx = 10
		beery = 126
		
		bananasx = 344
		bananasy = 126
		
		losing_points = 10
	else
	end

	derpy()
end


function puzzle:update(dt)
	cron.update(dt)
end

function puzzle:draw()
	
	love.graphics.draw(background)
	
	beer:draw(beerx, beery)
	bananas:draw(bananasx, bananasy)
	monkey_various_animations:draw(monkeyx, monkeyy)
	boy_jump_animation:draw(davidx, davidy)
	
	love.graphics.draw(tester1, davidx + 52, davidy) --right
	love.graphics.draw(tester2, davidx - 52, davidy) --left 
	love.graphics.draw(tester3, davidx, davidy + 52) -- bottom-
	love.graphics.draw(tester4, davidx, davidy - 52) -- top
	
	love.graphics.draw(tester5, monkeyx + 52, monkeyy)
	love.graphics.draw(tester6, monkeyx - 52, monkeyy)
	love.graphics.draw(tester7, monkeyx , monkeyy + 52)
	love.graphics.draw(tester8, monkeyx , monkeyy - 52)
	
	love.graphics.draw(cage, 0, 27)
	love.graphics.draw(box, box1_x, box1_y)
	love.graphics.draw(box, box2_x, box2_y)
	love.graphics.draw(box, box3_x, box3_y)
	love.graphics.draw(box, box4_x, box4_y)
	love.graphics.draw(box, box5_x, box5_y)
	love.graphics.draw(box, box6_x, box6_y)
	love.graphics.draw(box, box7_x, box7_y)
	love.graphics.draw(box, box8_x, box8_y)
	love.graphics.draw(box, box9_x, box9_y)
	love.graphics.draw(box, box10_x, box10_y)
	love.graphics.draw(box, box11_x, box11_y)
	love.graphics.draw(box, box12_x, box12_y)
	love.graphics.draw(box, box13_x, box13_y)
	love.graphics.draw(box, box14_x, box14_y)
	love.graphics.draw(box, box15_x, box15_y)
	love.graphics.draw(box, box16_x, box16_y)
	
	love.graphics.draw(score_board, 174, 0)
	
	the_score:draw(180, 82)
	
	the_score_2:seek(losing_points + 1)
	the_score_2:draw(180, 146)
	
	sup_ani:draw(0, 0)
	escape_retry_ani:draw(116, 36)
	escape_levels_ani:draw(116, 96)
	escape_main_ani:draw(116, 156)
	
	
	
	win_ani_part_1:draw(0,0)
	win_ani_part_2:draw(0,0)
	win_ani_part_3:draw(0,0)
	
	main_button_win_ani:draw(140, 185)
	next_button_win_ani:draw(7, 185)
	quit_button_win_ani:draw(273, 185)

	
	love.graphics.setFont(font)
	
	if scoresies_1 == true then
		if zip == true then
			love.audio.play(end_score_sound)
		else
		end
		if count < 10 then
			love.graphics.print("Your Score: 0" .. (count - 1), 107, 61, 0, 1, 1)
		else
			love.graphics.print("Your Score: " .. (count - 1), 107, 61, 0, 1, 1)
		end
		cron.every(1, testing_timer)
		testing_timer()
		zip = false
	end
end


function puzzle:keypressed(key)

----------------------------------------------------------------------------------------------------------------
-----------------DOWN---------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
---pay attention to the comments for the down key because its the only time movement 
---code is commented, mostly because its almost the exact same code repeated 4 times-
----------------------------------------------------------------------------------------------------------------

	if key == "down" then
		if escape == true then
			if escape_retry_button == true then
				escape_levels_button = true
				escape_retry_button = false
				escape_levels_ani:seek(3)
				escape_retry_ani:seek(2)
				escape_main_ani:seek(2)
			elseif escape_levels_button == true then
				escape_main_button = true
				escape_levels_button = false
				escape_levels_ani:seek(2)
				escape_retry_ani:seek(2)
				escape_main_ani:seek(3)
			elseif escape_main_button == true then
				escape_retry_button = true
				escape_main_button = false
				escape_levels_ani:seek(2)
				escape_retry_ani:seek(3)
				escape_main_ani:seek(2)
			else
			end
			
		elseif escape == false then
			--movement is an on/off switch to detect if a walk cycle is happening
			--interrupting the cycle would mean that you could end up between bars and whatnot.
			--aka dont do anything
			if movement == false then
		
			
			--youre as far as you can go.  aka dont do anything.
			elseif davidy + 52 > 227 then
				
			--you cant go that way because a box is in your way.  aka dont do anything.
			elseif (davidx == box1_x) and (davidy + 52 == box1_y) then
			elseif (davidx == box2_x) and (davidy + 52 == box2_y) then
			elseif (davidx == box3_x) and (davidy + 52 == box3_y) then
			elseif (davidx == box4_x) and (davidy + 52 == box4_y) then
			elseif (davidx == box5_x) and (davidy + 52 == box5_y) then
			elseif (davidx == box6_x) and (davidy + 52 == box6_y) then
			elseif (davidx == box7_x) and (davidy + 52 == box7_y) then
			elseif (davidx == box8_x) and (davidy + 52 == box8_y) then
			elseif (davidx == box9_x) and (davidy + 52 == box9_y) then
			elseif (davidx == box10_x) and (davidy + 52 == box10_y) then
			elseif (davidx == box11_x) and (davidy + 52 == box11_y) then
			elseif (davidx == box12_x) and (davidy + 52 == box12_y) then
			elseif (davidx == box13_x) and (davidy + 52 == box13_y) then
			elseif (davidx == box14_x) and (davidy + 52 == box14_y) then
			elseif (davidx == box15_x) and (davidy + 52 == box15_y) then
			elseif (davidx == box16_x) and (davidy + 52 == box16_y) then
			
			
			--the monkey is blocked, but youre not.
			elseif ((monkeyx == box3_x) and (monkeyy + 52 == box3_y)) or
			((monkeyx == box4_x) and (monkeyy + 52 == box4_y)) or
			((monkeyx == box5_x) and (monkeyy + 52 == box5_y)) or
			((monkeyx == box6_x) and (monkeyy + 52 == box6_y)) or
			((monkeyx == box7_x) and (monkeyy + 52 == box7_y)) or
			((monkeyx == box8_x) and (monkeyy + 52 == box8_y)) or
			((monkeyx == box9_x) and (monkeyy + 52 == box9_y)) or
			((monkeyx == box10_x) and (monkeyy + 52 == box10_y)) or
			((monkeyx == box11_x) and (monkeyy + 52 == box11_y)) or
			((monkeyx == box12_x) and (monkeyy + 52 == box12_y)) or
			((monkeyx == box13_x) and (monkeyy + 52 == box13_y)) or
			((monkeyx == box14_x) and (monkeyy + 52 == box14_y)) or
			((monkeyx == box15_x) and (monkeyy + 52 == box15_y)) or
			((monkeyx == box16_x) and (monkeyy + 52 == box16_y)) or
			
			--the monkey is at the bottom of the cage
			monkeyy + 52 > 227 then
				
				--x is the variable that stops the bell sound from constantly going off if youre on the beer/bananas.
				x = true
				
				--count is the score:)
				count = count + 1
				the_score:seek(count)
				movement = false 
				boy_jump_animation:seek(1)
				monkey_various_animations:seek(1)
				--Boy/monkey down-jump
				function puzzle:update(dt)
					boy_jump_animation:update(dt)
					boy_jump_animation:play()
					derpx = boy_jump_animation:getCurrentFrame()
					monkey_various_animations:update(dt)
					if derpx == 1 then
						if (movement == false) then
							beer:seek(1)
							check = false
						else
						end
						
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(82)
						end
					elseif derpx == 2 then
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(83)
						end
					elseif derpx == 3 then
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(84)
						end
					elseif derpx == 4 then
						boy_jump_animation:setSpeed(2)
						davidy = davidy + 10
						boy_jump_animation:seek(5)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(85)
						end
						love.audio.play(fall_sound)
					elseif derpx == 5 then
						davidy = davidy
					elseif derpx == 6 then
						davidy = davidy + 10
						boy_jump_animation:seek(7)
					elseif derpx == 7 then
						davidy = davidy
					elseif derpx == 8 then
						davidy = davidy + 11
						boy_jump_animation:seek(9)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(86)
						end
					elseif derpx == 9 then
						davidy = davidy
					elseif derpx == 10 then
						davidy = davidy + 11
						boy_jump_animation:seek(11)
					elseif derpx == 11 then
						davidy = davidy
					elseif derpx == 12 then
						davidy = davidy + 10
						boy_jump_animation:seek(13)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(87)
						end
						boy_jump_animation:setSpeed(1)
					elseif derpx == 13 then
						davidy = davidy
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(88)
						end
					elseif derpx == 14 then
						davidy = davidy
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(89)
						end
					elseif derpx == 15 then
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						check = true
						love.audio.stop(fall_sound)
					else
					end
					if ((check == true) and (davidx == beerx) and (davidy == beery)) then
						if x == true then
							love.audio.play(check_sound)
						else
						end
						x = false
						boy_jump_animation:seek(62)
						beer:seek(2)
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						win_puzzle()
					else
					end
					if (( check == true) and (monkeyx == bananasx) and (monkeyy == bananasy)) then
						if x == true then
							love.audio.play(check_sound)
						else
						end
						x = false
						monkey_various_animations:seek(100)
						bananas:seek(2)
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						win_puzzle()
					else
					end
				end
				
			--if everythings fine
			elseif movement == true then
				x = true
				count = count + 1 
				the_score:seek(count)
				movement = false
				boy_jump_animation:seek(1)
				check = false
				monkey_various_animations:seek(1)
				--Boy/monkey down-jump
				function puzzle:update(dt)
					boy_jump_animation:update(dt)
					boy_jump_animation:play()
					derpx = boy_jump_animation:getCurrentFrame()
					monkey_various_animations:update(dt)
					monkey_various_animations:play()
					if derpx == 4 then
						if (movement == false) then
							bananas:seek(1)
						else
						end
						if (movement == false) then
							beer:seek(1)
						else
						end
						boy_jump_animation:setSpeed(2)
						davidy = davidy + 10
						boy_jump_animation:seek(5)
						monkey_various_animations:seek(5)
						monkeyy = monkeyy + 10
						love.audio.play(fall_sound)
					elseif derpx == 5 then
						davidy = davidy
					elseif derpx == 6 then
						davidy = davidy + 10
						boy_jump_animation:seek(7)
						monkey_various_animations:seek(7)
						monkeyy = monkeyy + 10
					elseif derpx == 7 then
						davidy = davidy
					elseif derpx == 8 then
						davidy = davidy + 11
						boy_jump_animation:seek(9)
						monkey_various_animations:seek(9)
						monkeyy = monkeyy + 11
					elseif derpx == 9 then
						davidy = davidy
					elseif derpx == 10 then
						davidy = davidy + 11
						boy_jump_animation:seek(11)
						monkey_various_animations:seek(11)
						monkeyy = monkeyy + 11
					elseif derpx == 11 then
						davidy = davidy
					elseif derpx == 12 then
						davidy = davidy + 10
						boy_jump_animation:seek(13)
						monkey_various_animations:seek(13)
						boy_jump_animation:setSpeed(1)
						monkeyy = monkeyy + 10
					elseif derpx == 13 then
						davidy = davidy
					elseif derpx == 14 then
						davidy = davidy
					elseif derpx == 15 then
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						check = true
						love.audio.stop(fall_sound)
					else
					end
					if ((check == true) and (davidx == beerx) and (davidy == beery)) then
						if x == true then
							love.audio.play(check_sound)
						else
						end
						x = false
						boy_jump_animation:seek(62)
						beer:seek(2)
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						win_puzzle()
					else
					end
					if (( check == true) and (monkeyx == bananasx) and (monkeyy == bananasy)) then
						if x == true then
							love.audio.play(check_sound)
						else
						end
						x = false
						monkey_various_animations:seek(100)
						bananas:seek(2)
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						win_puzzle()
					else
					end
				end
			end
		end
	
----------------------------------------------------------------------------------------------------------------
-----------------RIGHT (done) -------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------		
	elseif key == "right" then
		if win_menu == true then
			if count - 1 <= losing_points then
				if win_menu_next_button == true then
					win_menu_main_button = true
					win_menu_next_button = false
					next_button_win_ani:seek(3)
					main_button_win_ani:seek(2)
				elseif win_menu_main_button == true then
					win_menu_quit_button = true
					win_menu_main_button = false
					main_button_win_ani:seek(3)
					quit_button_win_ani:seek(2)
				elseif win_menu_quit_button == true then
					win_menu_next_button = true
					win_menu_quit_button = false
					next_button_win_ani:seek(2)
					quit_button_win_ani:seek(3)
				else
				end
			else
				if win_menu_next_button == true then
					win_menu_main_button = true
					win_menu_next_button = false
					next_button_win_ani:seek(5)
					main_button_win_ani:seek(2)
				elseif win_menu_main_button == true then
					win_menu_quit_button = true
					win_menu_main_button = false
					main_button_win_ani:seek(3)
					quit_button_win_ani:seek(2)
				elseif win_menu_quit_button == true then
					win_menu_next_button = true
					win_menu_quit_button = false
					next_button_win_ani:seek(4)
					quit_button_win_ani:seek(3)
				else
				end
			end
		else
			
			if movement == false then
				
			elseif davidx + 52 > 165 then
				
			elseif (davidx + 52 == box1_x) and (davidy == box1_y) then
			elseif (davidx + 52 == box2_x) and (davidy == box2_y) then
			elseif (davidx + 52 == box3_x) and (davidy == box3_y) then
			elseif (davidx + 52 == box4_x) and (davidy == box4_y) then
			elseif (davidx + 52 == box5_x) and (davidy == box5_y) then
			elseif (davidx + 52 == box6_x) and (davidy == box6_y) then
			elseif (davidx + 52 == box7_x) and (davidy == box7_y) then
			elseif (davidx + 52 == box8_x) and (davidy == box8_y) then
			elseif (davidx + 52 == box9_x) and (davidy == box9_y) then
			elseif (davidx + 52 == box10_x) and (davidy == box10_y) then
			elseif (davidx + 52 == box11_x) and (davidy == box11_y) then
			elseif (davidx + 52 == box12_x) and (davidy == box12_y) then
			elseif (davidx + 52 == box13_x) and (davidy == box13_y) then
			elseif (davidx + 52 == box14_x) and (davidy == box14_y) then
			elseif (davidx + 52 == box15_x) and (davidy == box15_y) then
			elseif (davidx + 52 == box16_x) and (davidy == box16_y) then
			
			elseif ((monkeyx + 52 == box3_x) and (monkeyy == box3_y)) or 
			((monkeyx + 52 == box4_x) and (monkeyy == box4_y))  or
			((monkeyx + 52 == box5_x) and (monkeyy == box5_y)) or 
			((monkeyx + 52 == box6_x) and (monkeyy == box6_y)) or 
			((monkeyx + 52 == box7_x) and (monkeyy == box7_y)) or 
			((monkeyx + 52 == box8_x) and (monkeyy == box8_y)) or 
			((monkeyx + 52 == box9_x) and (monkeyy == box9_y)) or 
			((monkeyx + 52 == box10_x) and (monkeyy == box10_y)) or 
			((monkeyx + 52 == box11_x) and (monkeyy == box11_y)) or 
			((monkeyx + 52 == box12_x) and (monkeyy == box12_y)) or 
			((monkeyx + 52 == box13_x) and (monkeyy == box13_y)) or 
			((monkeyx + 52 == box14_x) and (monkeyy == box14_y))  or 
			((monkeyx + 52 == box15_x) and (monkeyy == box15_y))  or 
			((monkeyx + 52 == box16_x) and (monkeyy == box16_y))  or 
			
			monkeyx + 52 > 390 then
			
				x = true
				count = count + 1
				the_score:seek(count)
				movement = false
				boy_jump_animation:seek(1)
				monkey_various_animations:seek(1)
				function puzzle:update(dt)
					boy_jump_animation:update(dt)
					boy_jump_animation:play()
					derpx = boy_jump_animation:getCurrentFrame()
					monkey_various_animations:update(dt)
					if derpx == 1 then
						if (movement == false) then
							beer:seek(1)
						else
						end
						check = false
						boy_jump_animation:setSpeed(2)
						boy_jump_animation:seek(16)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(64)
						end
					elseif derpx == 16 then
						davidx = davidx
					elseif derpx == 17 then
						love.audio.play(walk_sound)
						davidx = davidx + 8
						boy_jump_animation:seek(18)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(65)
						end
					elseif derpx == 18 then
						davidx = davidx
					elseif derpx == 19 then
						davidx = davidx + 7
						boy_jump_animation:seek(20)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(66)
						end
					elseif derpx == 20 then
						davidx = davidx
					elseif derpx == 21 then
						davidx = davidx + 7
						boy_jump_animation:seek(22)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(67)
						end
					elseif derpx == 22 then
						davidx = davidx
					elseif derpx == 23 then
						davidx = davidx + 8
						boy_jump_animation:seek(24)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(68)
						end
					elseif derpx == 24 then
						davidx = davidx
					elseif derpx == 25 then
						davidx = davidx + 7
						boy_jump_animation:seek(26)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(69)
						end
					elseif derpx == 26 then
						davidx = davidx
					elseif derpx == 27 then
						davidx = davidx + 8
						boy_jump_animation:seek(28)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(70)
						end
					elseif derpx == 28 then
						davidx = davidx
					elseif derpx == 29 then
						davidx = davidx + 7
						boy_jump_animation:seek(30)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(71)
						end
					elseif derpx == 30 then
						monkey_various_animations:stop()
						boy_jump_animation:stop()
						movement = true
						check = true
						love.audio.stop(walk_sound)
					else
					end
					if ((check == true) and (davidx == beerx) and (davidy == beery)) then
						if x == true then
							love.audio.play(check_sound)
						else
						end
						x = false
						boy_jump_animation:seek(62)
						beer:seek(2)
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						win_puzzle()
					else
					end
					if (( check == true) and (monkeyx == bananasx) and (monkeyy == bananasy)) then
						if x == true then
							love.audio.play(check_sound)
						else
						end
						x = false
						monkey_various_animations:seek(100)
						bananas:seek(2)
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						win_puzzle()
					else
					end
				end
			
			elseif movement == true then
				x = true
				count = count + 1
				movement = false
				the_score:seek(count)
				boy_jump_animation:seek(1)
				monkey_various_animations:seek(1)
				function puzzle:update(dt)
					boy_jump_animation:update(dt)
					boy_jump_animation:play()
					derpx = boy_jump_animation:getCurrentFrame()
					monkey_various_animations:update(dt)
					monkey_various_animations:play()
					if derpx == 1 then
						check = false
						if (movement == false) then
							bananas:seek(1)
						else
						end
						if (movement == false) then
							beer:seek(1)
						else
						end
						boy_jump_animation:setSpeed(2)
						boy_jump_animation:seek(16)
						monkey_various_animations:seek(16)
					elseif derpx == 16 then
						davidx = davidx
					elseif derpx == 17 then
						love.audio.play(walk_sound)
						davidx = davidx + 8
						monkeyx = monkeyx + 8
						boy_jump_animation:seek(18)
						monkey_various_animations:seek(18)
					elseif derpx == 18 then
						davidx = davidx
					elseif derpx == 19 then
						davidx = davidx + 7
						monkeyx = monkeyx + 7
						boy_jump_animation:seek(20)
						monkey_various_animations:seek(20)
					elseif derpx == 20 then
						davidx = davidx
					elseif derpx == 21 then
						davidx = davidx + 7
						monkeyx = monkeyx + 7
						boy_jump_animation:seek(22)
						monkey_various_animations:seek(22)
					elseif derpx == 22 then
						davidx = davidx
					elseif derpx == 23 then
						davidx = davidx + 8
						monkeyx = monkeyx + 8
						boy_jump_animation:seek(24)
						monkey_various_animations:seek(24)
					elseif derpx == 24 then
						davidx = davidx
					elseif derpx == 25 then
						davidx = davidx + 7
						monkeyx = monkeyx + 7
						boy_jump_animation:seek(26)
						monkey_various_animations:seek(26)
					elseif derpx == 26 then
						davidx = davidx
					elseif derpx == 27 then
						davidx = davidx + 8
						monkeyx = monkeyx + 8
						boy_jump_animation:seek(28)
						monkey_various_animations:seek(28)
					elseif derpx == 28 then
						davidx = davidx
					elseif derpx == 29 then
						davidx = davidx + 7
						monkeyx = monkeyx + 7
						boy_jump_animation:seek(30)
						monkey_various_animations:seek(30)
					elseif derpx == 30 then
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						check = true
						love.audio.stop(walk_sound)
					else
					end
					if ((check == true) and (davidx == beerx) and (davidy == beery)) then
						if x == true then
							love.audio.play(check_sound)
						else
						end
						x = false
						boy_jump_animation:seek(62)
						beer:seek(2)
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						win_puzzle()
					else
					end
					if (( check == true) and (monkeyx == bananasx) and (monkeyy == bananasy)) then
						if x == true then
							love.audio.play(check_sound)
						else
						end
						x = false
						monkey_various_animations:seek(100)
						bananas:seek(2)
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						win_puzzle()
					else
					end
				end
			end
		end

	
----------------------------------------------------------------------------------------------------------------
-----------------LEFT (done) ---------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------		
	
	
	elseif key == "left" then
		if win_menu == true then
			if count - 1 <= losing_points then
				if win_menu_next_button == true then
					win_menu_quit_button = true
					win_menu_next_button = false
					next_button_win_ani:seek(3)
					quit_button_win_ani:seek(2)
				elseif win_menu_main_button == true then
					win_menu_next_button = true
					win_menu_main_button = false
					main_button_win_ani:seek(3)
					next_button_win_ani:seek(2)
				elseif win_menu_quit_button == true then
					win_menu_main_button = true
					win_menu_quit_button = false
					main_button_win_ani:seek(2)
					quit_button_win_ani:seek(3)
				else
				end
			else
				if win_menu_next_button == true then
					win_menu_quit_button = true
					win_menu_next_button = false
					next_button_win_ani:seek(5)
					quit_button_win_ani:seek(2)
				elseif win_menu_main_button == true then
					win_menu_next_button = true
					win_menu_main_button = false
					main_button_win_ani:seek(3)
					next_button_win_ani:seek(4)
				elseif win_menu_quit_button == true then
					win_menu_main_button = true
					win_menu_quit_button = false
					main_button_win_ani:seek(2)
					quit_button_win_ani:seek(3)
				else
				end
			end
		else
		
			if movement == false then
		
			elseif davidx -52 < 4 then
			
			elseif (davidx - 52 == box1_x) and (davidy == box1_y) then
			elseif (davidx - 52 == box2_x) and (davidy == box2_y) then
			elseif (davidx - 52 == box3_x) and (davidy == box3_y) then
			elseif (davidx - 52 == box4_x) and (davidy == box4_y) then
			elseif (davidx - 52 == box5_x) and (davidy == box5_y) then
			elseif (davidx - 52 == box6_x) and (davidy == box6_y) then
			elseif (davidx - 52 == box7_x) and (davidy == box7_y) then
			elseif (davidx - 52 == box8_x) and (davidy == box8_y) then
			elseif (davidx - 52 == box9_x) and (davidy == box9_y) then
			elseif (davidx - 52 == box10_x) and (davidy == box10_y) then
			elseif (davidx - 52 == box11_x) and (davidy == box11_y) then
			elseif (davidx - 52 == box12_x) and (davidy == box12_y) then
			elseif (davidx - 52 == box13_x) and (davidy == box13_y) then
			elseif (davidx - 52 == box14_x) and (davidy == box14_y) then
			elseif (davidx - 52 == box15_x) and (davidy == box15_y) then
			elseif (davidx - 52 == box16_x) and (davidy == box16_y) then
				
			elseif ((monkeyx - 52 == box3_x) and (monkeyy == box3_y)) or
			((monkeyx - 52 == box4_x) and (monkeyy == box4_y)) or
			((monkeyx - 52 == box5_x) and (monkeyy == box5_y)) or
			((monkeyx - 52 == box6_x) and (monkeyy == box6_y)) or
			((monkeyx - 52 == box7_x) and (monkeyy == box7_y)) or
			((monkeyx - 52 == box8_x) and (monkeyy == box8_y)) or
			((monkeyx - 52 == box9_x) and (monkeyy == box9_y)) or
			((monkeyx - 52 == box10_x) and (monkeyy == box10_y)) or
			((monkeyx - 52 == box11_x) and (monkeyy == box11_y)) or
			((monkeyx - 52 == box12_x) and (monkeyy == box12_y)) or
			((monkeyx - 52 == box13_x) and (monkeyy == box13_y)) or
			((monkeyx - 52 == box14_x) and (monkeyy == box14_y)) or
			((monkeyx - 52 == box15_x) and (monkeyy == box15_y)) or
			((monkeyx - 52 == box16_x) and (monkeyy == box16_y)) or
			
			monkeyx - 52 < 233 then
			
				x = true
				count = count + 1
				the_score:seek(count)
				movement = false
				boy_jump_animation:seek(1)
				monkey_various_animations:seek(1)
				function puzzle:update(dt)
					boy_jump_animation:update(dt)
					boy_jump_animation:play()
					derpx = boy_jump_animation:getCurrentFrame()
					monkey_various_animations:update(dt)
					if derpx == 1 then
						check = false
						if (movement == false) then
							beer:seek(1)
						else
						end
						boy_jump_animation:setSpeed(2)
						boy_jump_animation:seek(31)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(74)
						end
					elseif derpx == 31 then
						davidx = davidx
					elseif derpx == 32 then
						love.audio.play(walk_sound)
						davidx = davidx - 8
						boy_jump_animation:seek(33)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(75)
						end
					elseif derpx == 33 then
						davidx = davidx
					elseif derpx == 34 then
						davidx = davidx - 7
						boy_jump_animation:seek(35)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(76)
						end
					elseif derpx == 35 then
						davidx = davidx
					elseif derpx == 36 then
						davidx = davidx - 7
						boy_jump_animation:seek(37)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(77)
						end
					elseif derpx == 37 then
						davidx = davidx
					elseif derpx == 38 then
						davidx = davidx - 8
						boy_jump_animation:seek(39)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(78)
						end
					elseif derpx == 39 then
						davidx = davidx
					elseif derpx == 40 then
						davidx = davidx - 7
						boy_jump_animation:seek(41)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(79)
						end
					elseif derpx == 41 then
						davidx = davidx
					elseif derpx == 42 then
						davidx = davidx - 8
						boy_jump_animation:seek(43)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(80)
						end
					elseif derpx == 43 then
						davidx = davidx
					elseif derpx == 44 then
						davidx = davidx - 7
						boy_jump_animation:seek(45)
						if (monkeyx == bananasx) and (monkeyy == bananasy) then
							monkey_various_animations:seek(100)
						else
							monkey_various_animations:seek(81)
						end
					elseif derpx == 45 then
						monkey_various_animations:stop()
						boy_jump_animation:stop()
						movement = true
						check = true
						love.audio.stop(walk_sound)
					else
					end
					if ((check == true) and (davidx == beerx) and (davidy == beery)) then
						if x == true then
							love.audio.play(check_sound)
						else
						end
						x = false
						boy_jump_animation:seek(62)
						beer:seek(2)
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						win_puzzle()
					else
					end
					if (( check == true) and (monkeyx == bananasx) and (monkeyy == bananasy)) then
						if x == true then
							love.audio.play(check_sound)
						else
						end
						x = false
						monkey_various_animations:seek(100)
						bananas:seek(2)
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						win_puzzle()
					else
					end
				end
				
			elseif movement == true then
				x = true
				count = count + 1
				the_score:seek(count)
				movement = false
				boy_jump_animation:seek(1)
				monkey_various_animations:seek(1)
				function puzzle:update(dt)
					boy_jump_animation:update(dt)
					boy_jump_animation:play()
					derpx = boy_jump_animation:getCurrentFrame()
					monkey_various_animations:update(dt)
					monkey_various_animations:play()
					if derpx == 1 then
						if (movement == false) then
							bananas:seek(1)
						else
						end
						if (movement == false) then
							beer:seek(1)
						else
						end
						boy_jump_animation:setSpeed(2)
						boy_jump_animation:seek(31)
						monkey_various_animations:seek(31)
						check = false
					elseif derpx == 31 then
						davidx = davidx
					elseif derpx == 32 then
						love.audio.play(walk_sound)
						davidx = davidx - 8
						monkeyx = monkeyx - 8
						boy_jump_animation:seek(33)
						monkey_various_animations:seek(33)
					elseif derpx == 33 then
						davidx = davidx
					elseif derpx == 34 then
						davidx = davidx - 7
						monkeyx = monkeyx - 7
						boy_jump_animation:seek(35)
						monkey_various_animations:seek(35)
					elseif derpx == 35 then
						davidx = davidx
					elseif derpx == 36 then
						davidx = davidx - 7
						monkeyx = monkeyx - 7
						boy_jump_animation:seek(37)
						monkey_various_animations:seek(37)
					elseif derpx == 37 then
						davidx = davidx
					elseif derpx == 38 then
						davidx = davidx - 8
						monkeyx = monkeyx - 8
						boy_jump_animation:seek(39)
						monkey_various_animations:seek(39)
					elseif derpx == 39 then
						davidx = davidx
					elseif derpx == 40 then
						davidx = davidx - 7
						monkeyx = monkeyx - 7
						boy_jump_animation:seek(41)
						monkey_various_animations:seek(41)
					elseif derpx == 41 then
						davidx = davidx
					elseif derpx == 42 then
						davidx = davidx - 8
						monkeyx = monkeyx - 8
						boy_jump_animation:seek(43)
						monkey_various_animations:seek(43)
					elseif derpx == 43 then
						davidx = davidx
					elseif derpx == 44 then
						davidx = davidx - 7
						monkeyx = monkeyx - 7
						boy_jump_animation:seek(45)
						monkey_various_animations:seek(45)
					elseif derpx == 45 then
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						check = true
						love.audio.stop(walk_sound)
					else
					end
					if ((check == true) and (davidx == beerx) and (davidy == beery)) then
						if x == true then
							love.audio.play(check_sound)
						else
						end
						x = false
						boy_jump_animation:seek(62)
						beer:seek(2)
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						win_puzzle()
					else
					end
					if (( check == true) and (monkeyx == bananasx) and (monkeyy == bananasy)) then
						if x == true then
							love.audio.play(check_sound)
						else
						end
						x = false
						monkey_various_animations:seek(100)
						bananas:seek(2)
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						win_puzzle()
					else
					end
				end
			end
		end
	
----------------------------------------------------------------------------------------------------------------
-----------------UP--------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------		
	
	elseif key == "up" then
		if escape == true then
			if escape_retry_button == true then
				escape_main_button = true
				escape_retry_button = false
				escape_levels_ani:seek(2)
				escape_retry_ani:seek(2)
				escape_main_ani:seek(3)
			elseif escape_levels_button == true then
				escape_retry_button = true
				escape_levels_button = false
				escape_levels_ani:seek(2)
				escape_retry_ani:seek(3)
				escape_main_ani:seek(2)
			elseif escape_main_button == true then
				escape_levels_button = true
				escape_main_button = false
				escape_levels_ani:seek(3)
				escape_retry_ani:seek(2)
				escape_main_ani:seek(2)
			end
			
		elseif escape == false then
	
			if movement == false then
				
			elseif davidy - 52 < 66 then
				
			elseif (davidx  == box1_x) and (davidy - 52== box1_y) then
			elseif (davidx  == box2_x) and (davidy - 52 == box2_y) then
			elseif (davidx  == box3_x) and (davidy - 52 == box3_y) then
			elseif (davidx == box4_x) and (davidy - 52 == box4_y) then
			elseif (davidx == box5_x) and (davidy - 52 == box5_y) then
			elseif (davidx == box6_x) and (davidy - 52 == box6_y) then
			elseif (davidx == box7_x) and (davidy  - 52== box7_y) then
			elseif (davidx == box8_x) and (davidy - 52 == box8_y) then
			elseif (davidx == box9_x) and (davidy - 52== box9_y) then
			elseif (davidx == box10_x) and (davidy - 52 == box10_y) then
			elseif (davidx == box11_x) and (davidy - 52 == box11_y) then
			elseif (davidx  == box12_x) and (davidy - 52 == box12_y) then
			elseif (davidx == box13_x) and (davidy - 52 == box13_y) then
			elseif (davidx == box14_x) and (davidy - 52 == box14_y) then
			elseif (davidx == box15_x) and (davidy - 52 == box15_y) then
			elseif (davidx == box16_x) and (davidy - 52 == box16_y) then
			
			elseif ((monkeyx == box3_x) and (monkeyy - 52 == box3_y)) or
			((monkeyx == box4_x) and (monkeyy - 52 == box4_y)) or
			((monkeyx == box5_x) and (monkeyy - 52 == box5_y)) or
			((monkeyx == box6_x) and (monkeyy - 52 == box6_y)) or
			((monkeyx == box7_x) and (monkeyy - 52 == box7_y)) or
			((monkeyx == box8_x) and (monkeyy - 52 == box8_y)) or
			((monkeyx == box9_x) and (monkeyy - 52 == box9_y)) or
			((monkeyx == box10_x) and (monkeyy - 52 == box10_y)) or
			((monkeyx == box11_x) and (monkeyy - 52 == box11_y)) or
			((monkeyx == box12_x) and (monkeyy - 52 == box12_y)) or
			((monkeyx == box13_x) and (monkeyy - 52 == box13_y)) or
			((monkeyx == box14_x) and (monkeyy - 52 == box14_y)) or
			((monkeyx == box15_x) and (monkeyy - 52 == box15_y)) or
			((monkeyx == box16_x) and (monkeyy - 52 == box16_y)) or
			
			monkeyy - 52 < 66 then
			x = true
			count = count + 1
			the_score:seek(count)
			movement = false
			boy_jump_animation:seek(1)
			monkey_various_animations:seek(1)
			function puzzle:update(dt)
				boy_jump_animation:update(dt)
				boy_jump_animation:play()
				derpx = boy_jump_animation:getCurrentFrame()
				monkey_various_animations:update(dt)
				if derpx == 1 then
					if (movement == false) then
						beer:seek(1)
					else
					end
					check = false
					boy_jump_animation:setSpeed(2)
					boy_jump_animation:seek(46)
					if (monkeyx == bananasx) and (monkeyy == bananasy) then
						monkey_various_animations:seek(100)
					else
						monkey_various_animations:seek(91)
					end
				elseif derpx == 46 then
					davidy = davidy
				elseif derpx == 47 then
					davidy = davidy
					if (monkeyx == bananasx) and (monkeyy == bananasy) then
						monkey_various_animations:seek(100)
					else
						monkey_various_animations:seek(92)
					end
				elseif derpx == 48 then
					davidy = davidy
				elseif derpx == 49 then
					love.audio.play(jump_sound)
					davidy = davidy - 21
					boy_jump_animation:seek(50)
					if (monkeyx == bananasx) and (monkeyy == bananasy) then
						monkey_various_animations:seek(100)
					else
						monkey_various_animations:seek(93)
					end
				elseif derpx == 50 then
					davidy = davidy
				elseif derpx == 51 then
					davidy = davidy - 16
					boy_jump_animation:seek(52)
					if (monkeyx == bananasx) and (monkeyy == bananasy) then
						monkey_various_animations:seek(100)
					else
						monkey_various_animations:seek(94)
					end
				elseif derpx == 52 then
					davidy = davidy
				elseif derpx == 53 then
					davidy = davidy - 11
					boy_jump_animation:seek(54)
					if (monkeyx == bananasx) and (monkeyy == bananasy) then
						monkey_various_animations:seek(100)
					else
						monkey_various_animations:seek(95)
					end
				elseif derpx == 54 then
					davidy = davidy
				elseif derpx == 55 then
					davidy = davidy - 8
					boy_jump_animation:seek(56)
					if (monkeyx == bananasx) and (monkeyy == bananasy) then
						monkey_various_animations:seek(100)
					else
						monkey_various_animations:seek(96)
					end
				elseif derpx == 56 then
					davidy = davidy
				elseif derpx == 57 then
					davidy = davidy + 4
					boy_jump_animation:seek(58)
					if (monkeyx == bananasx) and (monkeyy == bananasy) then
						monkey_various_animations:seek(100)
					else
						monkey_various_animations:seek(97)
					end
				elseif derpx == 58 then
					davidy = davidy
					boy_jump_animation:seek(59)
					if (monkeyx == bananasx) and (monkeyy == bananasy) then
						monkey_various_animations:seek(100)
					else
						monkey_various_animations:seek(98)
					end
				elseif derpx == 59 then
					davidy = davidy
				elseif derpx == 60 then
					if (monkeyx == bananasx) and (monkeyy == bananasy) then
						monkey_various_animations:seek(100)
					else
						monkey_various_animations:seek(99)
					end
					boy_jump_animation:stop()
					monkey_various_animations:stop()
					movement = true
					check = true
					love.audio.stop(jump_sound)
				else
				end
				if ((check == true) and (davidx == beerx) and (davidy == beery)) then
					if x == true then
						love.audio.play(check_sound)
					else
					end
					x = false
					boy_jump_animation:seek(62)
					beer:seek(2)
					boy_jump_animation:stop()
					monkey_various_animations:stop()
					movement = true
					win_puzzle()
				else
				end
				if (( check == true) and (monkeyx == bananasx) and (monkeyy == bananasy)) then
						if x == true then
							love.audio.play(check_sound)
						else
						end
						x = false
						monkey_various_animations:seek(100)
						bananas:seek(2)
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						win_puzzle()
					else
					end
			end
			
			
			elseif movement == true then
				x = true
				count = count + 1
				the_score:seek(count)
				movement = false
				boy_jump_animation:seek(1)
				monkey_various_animations:seek(1)
				function puzzle:update(dt)
					boy_jump_animation:update(dt)
					boy_jump_animation:play()
					derpx = boy_jump_animation:getCurrentFrame()
					monkey_various_animations:update(dt)
					monkey_various_animations:play()
					if derpx == 1 then
						check = false
						if (movement == false) then
							bananas:seek(1)
						else
						end
						if (movement == false) then
							beer:seek(1)
						else
						end
						boy_jump_animation:setSpeed(2)
						boy_jump_animation:seek(46)
						monkey_various_animations:seek(46)
					elseif derpx == 46 then
						davidy = davidy
					elseif derpx == 47 then
						davidy = davidy
						monkey_various_animations:seek(47)
					elseif derpx == 48 then
						davidy = davidy
						monkey_various_animations:seek(48)
					elseif derpx == 49 then
						love.audio.play(jump_sound)
						davidy = davidy - 21
						monkeyy = monkeyy - 21
						boy_jump_animation:seek(50)
						monkey_various_animations:seek(50)
					elseif derpx == 50 then
						davidy = davidy
					elseif derpx == 51 then
						davidy = davidy - 16
						monkeyy = monkeyy - 16
						boy_jump_animation:seek(52)
						monkey_various_animations:seek(52)
					elseif derpx == 52 then
						davidy = davidy
					elseif derpx == 53 then
						davidy = davidy - 11
						monkeyy = monkeyy - 11
						boy_jump_animation:seek(54)
						monkey_various_animations:seek(54)
					elseif derpx == 54 then
						davidy = davidy
					elseif derpx == 55 then
						davidy = davidy - 8
						monkeyy = monkeyy - 8
						boy_jump_animation:seek(56)
						monkey_various_animations:seek(56)
					elseif derpx == 56 then
						davidy = davidy
					elseif derpx == 57 then
						davidy = davidy + 4
						monkeyy = monkeyy + 4
						boy_jump_animation:seek(58)
						monkey_various_animations:seek(58)
					elseif derpx == 58 then
						davidy = davidy
						boy_jump_animation:seek(59)
						monkey_various_animations:seek(59)
					elseif derpx == 59 then
						davidy = davidy
					elseif derpx == 60 then
						monkey_various_animations:seek(60)
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						check = true
						love.audio.stop(jump_sound)
					else
					end
					if ((check == true) and (davidx == beerx) and (davidy == beery)) then
						boy_jump_animation:seek(62)
						beer:seek(2)
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
					else
					end
					if (( check == true) and (monkeyx == bananasx) and (monkeyy == bananasy)) then
						if x == true then
							love.audio.play(check_sound)
						else
						end
						x = false
						monkey_various_animations:seek(100)
						bananas:seek(2)
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						win_puzzle()
					else
					end
					if ((check == true) and (davidx == beerx) and (davidy == beery)) then
						if x == true then
							love.audio.play(check_sound)
						else
						end
						x = false
						boy_jump_animation:seek(62)
						beer:seek(2)
						boy_jump_animation:stop()
						monkey_various_animations:stop()
						movement = true
						win_puzzle()
					else
					end
				end
			end
		end
			
	elseif key == "escape" then
		if win_menu == true then
		end
		
		if escape == false then
			escape_retry_ani:seek(3)
			if escape_retry_button == true then
				escape_retry_ani:seek(3)
			else
				escape_retry_ani:seek(2)
			end
		
			if escape_levels_button == true then
				escape_levels_ani:seek(3)
			else
				escape_levels_ani:seek(2)
			end
		
			if escape_main_button == true then
				escape_main_ani:seek(3)
			else
				escape_main_ani:seek(2)
			end
			sup_ani:seek(2)
			escape = true
				
		elseif escape == true then
			escape_retry_ani:seek(1)
			escape_levels_ani:seek(1)
			escape_main_ani:seek(1)
			sup_ani:seek(1)
			escape = false
			escape_retry_button = true
			escape_main_button = false
			escape_levels_button = false
		else
		end
			
			
	elseif key == "return" then
		if win_menu == true then
			if win_menu_next_button == true then
				local derpina = next_button_win_ani:getCurrentFrame()
				if derpina == 2 then
					if puzzle_1 == true then
						puzzle_2 = true
						puzzle_1 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_2 == true then
						puzzle_3 = true
						puzzle_2 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_3 == true then
						puzzle_4 = true
						puzzle_3 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_4 == true then
						puzzle_5 = true
						puzzle_4 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_5 == true then
						puzzle_6 = true
						puzzle_5 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_6 == true then
						puzzle_7 = true
						puzzle_6 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_7 == true then
						puzzle_8 = true
						puzzle_7 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_8 == true then
						puzzle_9 = true
						puzzle_8 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_9 == true then
						puzzle_10 = true
						puzzle_9 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_10 == true then
						puzzle_11 = true
						puzzle_10 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_11 == true then
						puzzle_12 = true
						puzzle_11 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_12 == true then
						puzzle_13 = true
						puzzle_12 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_13 == true then
						puzzle_14 = true
						puzzle_13 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_14 == true then
						puzzle_15 = true
						puzzle_14 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_15 == true then
						puzzle_16 = true
						puzzle_15 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_16 == true then
						puzzle_17 = true
						puzzle_16 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_17 == true then
						puzzle_18 = true
						puzzle_17 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_18 == true then
						puzzle_19 = true
						puzzle_18 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_19 == true then
						puzzle_20 = true
						puzzle_19 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_20 == true then
						puzzle_21 = true
						puzzle_20 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_21 == true then
						puzzle_22 = true
						puzzle_21 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_22 == true then
						puzzle_23 = true
						puzzle_22 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_23 == true then
						puzzle_24 = true
						puzzle_23 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_24 == true then
						puzzle_25 = true
						puzzle_24 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_25 == true then
						puzzle_26 = true
						puzzle_25 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_26 == true then
						puzzle_27 = true
						puzzle_26 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_27 == true then
						puzzle_28 = true
						puzzle_27 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_28 == true then
						puzzle_29 = true
						puzzle_28 = false
						Gamestate.switch(puzzle)
						reset()
					elseif puzzle_29 == true then
						puzzle_30 = true
						puzzle_29 = false
						Gamestate.switch(puzzle)
						reset()
					else
					end
				elseif derpina == 4 then
					reset()
					Gamestate.switch(puzzle)
				end
			elseif win_menu_main_button == true then
				reset()
				Gamestate.switch(menu_gamestate)
			elseif win_menu_quit_button == true then
				love.event.quit()
			end
	
		elseif escape == true then
			if escape_retry_button == true then
				Gamestate.switch(puzzle)
				escape_retry_ani:seek(1)
				escape_levels_ani:seek(1)
				escape_main_ani:seek(1)
				sup_ani:seek(1)
				escape = false
			elseif escape_levels_button == true then
				Gamestate.switch(level_select_1)
			elseif escape_main_button == true then
				Gamestate.switch(menu_gamestate)
			end
		else
		end
	end
end

--Called when leaving learnGamestate
function puzzle:leave()
	
	count = 1
	the_score:seek(count)
	escape_retry_ani:seek(1)
	escape_levels_ani:seek(1)
	escape_main_ani:seek(1)
	sup_ani:seek(1)
	escape = false
	escape_retry_button = true
	escape_levels_button = false
	escape_main_button = false

	
end

function derpy()
	
	win_ani_part_1:seek(1)
	win_ani_part_2:seek(16)
	win_ani_part_3:seek(12)
	
	movement = true
	function puzzle:update(dt)
		if (monkeyx == bananasx) and (monkeyy == bananasy) then
			monkey_various_animations:seek(100)
			bananas:seek(2)
		else
			monkey_various_animations:seek(1)
			bananas:seek(1)
		end
		
		if (davidx == beerx) and (davidy == beery) then
			boy_jump_animation:seek(62)
			beer:seek(2)
		else
			boy_jump_animation:seek(1)
			beer:seek(1)
		end
	end
end

function testing_timer()

	timer = timer - 1
	if timer < 0 then
		the_fuck()
	end
		
end

function win_timer()
	timer2 = timer2 - 1
	if timer2 < 0 then
		complete_puzzle()
	end
end

function the_fuck()
	if zip2 == true then
		love.audio.play(end_score_sound)
	else
	end
	if losing_points < 10 then
		love.graphics.print("Req. Score: 0" .. losing_points , 114, 110, 0, 1, 1)
	else
		love.graphics.print("Req. Score: " .. losing_points, 114, 110, 0, 1, 1)
	end
	
	zip2 = false
	
	win_or_lose()
end

function win_or_lose()
	timer3 = timer3 -1
	if timer3 < 0 then
		last_button_thing()
	end
end

function last_button_thing()
	if count - 1 <= losing_points then
		if zip3 == true then
			love.audio.play(pass_sound)
			
			if puzzle_1 == true then
				--Read the file that we made to keep score for puzzle 1
				local level_1_score = love.filesystem.read("puzzle_1")
				--If the file doesn't equal zero, it means the player has played the level before
				if tonumber(level_1_score) ~= 0 then
					--Which MEANS!!! That we have to check to see if the previous score is better
					--than the one that they just got.
					if tonumber(level_1_score) > count - 1 then
						love.filesystem.write("puzzle_1", count - 1)
					else
					--If the player took more steps than the previous attempt, we just ignore it.
					end
				--If the score is zero, the level hasn't been played before.  Which means we can just 
				--go ahead and write the score, because there's no way they beat the puzzle in 0 moves lol
				elseif tonumber(level_1_score) == 0 then
					love.filesystem.write("puzzle_1", count - 1)
				end
				
			elseif puzzle_2 == true then
				local level_2_score = love.filesystem.read("puzzle_2")
				if tonumber(level_2_score) ~= 0 then
					if tonumber(level_2_score) > count - 1 then
						love.filesystem.write("puzzle_2", count - 1)
					else
					end
				elseif tonumber(level_2_score) == 0 then
					love.filesystem.write("puzzle_2", count - 1)
				end
			
			elseif puzzle_3 == true then
				local level_3_score = love.filesystem.read("puzzle_3")
				if tonumber(level_3_score) ~= 0 then
					if tonumber(level_3_score) > count - 1 then
						love.filesystem.write("puzzle_3", count - 1)
					else
					end
				elseif tonumber(level_3_score) == 0 then
					love.filesystem.write("puzzle_3", count - 1)
				end
			
			elseif puzzle_4 == true then
				local level_4_score = love.filesystem.read("puzzle_4")
				if tonumber(level_4_score) ~= 0 then
					if tonumber(level_4_score) > count - 1 then
						love.filesystem.write("puzzle_4", count - 1)
					else
					end
				elseif tonumber(level_4_score) == 0 then
					love.filesystem.write("puzzle_4", count - 1)
				end
			
			elseif puzzle_5 == true then
				local level_5_score = love.filesystem.read("puzzle_5")
				if tonumber(level_5_score) ~= 0 then
					if tonumber(level_5_score) > count - 1 then
						love.filesystem.write("puzzle_5", count - 1)
					else
					end
				elseif tonumber(level_5_score) == 0 then
					love.filesystem.write("puzzle_5", count - 1)
				end
			
			elseif puzzle_6 == true then
				local level_6_score = love.filesystem.read("puzzle_6")
				if tonumber(level_6_score) ~= 0 then
					if tonumber(level_6_score) > count - 1 then
						love.filesystem.write("puzzle_6", count - 1)
					else
					end
				elseif tonumber(level_6_score) == 0 then
					love.filesystem.write("puzzle_6", count - 1)
				end
				
			elseif puzzle_7 == true then
				local level_7_score = love.filesystem.read("puzzle_7")
				if tonumber(level_7_score) ~= 0 then
					if tonumber(level_7_score) > count - 1 then
						love.filesystem.write("puzzle_7", count - 1)
					else
					end
				elseif tonumber(level_7_score) == 0 then
					love.filesystem.write("puzzle_7", count - 1)
				end
			
			elseif puzzle_8 == true then
				local level_8_score = love.filesystem.read("puzzle_8")
				if tonumber(level_8_score) ~= 0 then
					if tonumber(level_8_score) > count - 1 then
						love.filesystem.write("puzzle_8", count - 1)
					else
					end
				elseif tonumber(level_8_score) == 0 then
					love.filesystem.write("puzzle_8", count - 1)
				end
			
			elseif puzzle_9 == true then
				local level_9_score = love.filesystem.read("puzzle_9")
				if tonumber(level_9_score) ~= 0 then
					if tonumber(level_9_score) > count - 1 then
						love.filesystem.write("puzzle_9", count - 1)
					else
					end
				elseif tonumber(level_9_score) == 0 then
					love.filesystem.write("puzzle_9", count - 1)
				end
				
			elseif puzzle_10 == true then
				local level_10_score = love.filesystem.read("puzzle_10")
				if tonumber(level_10_score) ~= 0 then
					if tonumber(level_10_score) > count - 1 then
						love.filesystem.write("puzzle_10", count - 1)
					else
					end
				elseif tonumber(level_10_score) == 0 then
					love.filesystem.write("puzzle_10", count - 1)
				end
				
			elseif puzzle_11 == true then
				local level_11_score = love.filesystem.read("puzzle_11")
				if tonumber(level_11_score) ~= 0 then
					if tonumber(level_11_score) > count - 1 then
						love.filesystem.write("puzzle_11", count - 1)
					else
					end
				elseif tonumber(level_11_score) == 0 then
					love.filesystem.write("puzzle_11", count - 1)
				end
				
			elseif puzzle_12 == true then
				local level_12_score = love.filesystem.read("puzzle_12")
				if tonumber(level_12_score) ~= 0 then
					if tonumber(level_12_score) > count - 1 then
						love.filesystem.write("puzzle_12", count - 1)
					else
					end
				elseif tonumber(level_12_score) == 0 then
					love.filesystem.write("puzzle_12", count - 1)
				end
			
			elseif puzzle_13 == true then
				local level_13_score = love.filesystem.read("puzzle_13")
				if tonumber(level_13_score) ~= 0 then
					if tonumber(level_13_score) > count - 1 then
						love.filesystem.write("puzzle_13", count - 1)
					else
					end
				elseif tonumber(level_13_score) == 0 then
					love.filesystem.write("puzzle_13", count - 1)
				end
				
			elseif puzzle_14 == true then
				local level_14_score = love.filesystem.read("puzzle_14")
				if tonumber(level_14_score) ~= 0 then
					if tonumber(level_14_score) > count - 1 then
						love.filesystem.write("puzzle_14", count - 1)
					else
					end
				elseif tonumber(level_14_score) == 0 then
					love.filesystem.write("puzzle_14", count - 1)
				end
				
			elseif puzzle_15 == true then
				local level_15_score = love.filesystem.read("puzzle_15")
				if tonumber(level_15_score) ~= 0 then
					if tonumber(level_15_score) > count - 1 then
						love.filesystem.write("puzzle_15", count - 1)
					else
					end
				elseif tonumber(level_15_score) == 0 then
					love.filesystem.write("puzzle_15", count - 1)
				end
				
			elseif puzzle_16 == true then
				local level_16_score = love.filesystem.read("puzzle_16")
				if tonumber(level_16_score) ~= 0 then
					if tonumber(level_16_score) > count - 1 then
						love.filesystem.write("puzzle_16", count - 1)
					else
					end
				elseif tonumber(level_16_score) == 0 then
					love.filesystem.write("puzzle_16", count - 1)
				end
				
			elseif puzzle_17 == true then
				local level_17_score = love.filesystem.read("puzzle_17")
				if tonumber(level_17_score) ~= 0 then
					if tonumber(level_17_score) > count - 1 then
						love.filesystem.write("puzzle_17", count - 1)
					else
					end
				elseif tonumber(level_17_score) == 0 then
					love.filesystem.write("puzzle_17", count - 1)
				end
				
			elseif puzzle_18 == true then
				local level_18_score = love.filesystem.read("puzzle_18")
				if tonumber(level_18_score) ~= 0 then
					if tonumber(level_18_score) > count - 1 then
						love.filesystem.write("puzzle_18", count - 1)
					else
					end
				elseif tonumber(level_18_score) == 0 then
					love.filesystem.write("puzzle_18", count - 1)
				end
				
			elseif puzzle_19 == true then
				local level_19_score = love.filesystem.read("puzzle_19")
				if tonumber(level_19_score) ~= 0 then
					if tonumber(level_19_score) > count - 1 then
						love.filesystem.write("puzzle_19", count - 1)
					else
					end
				elseif tonumber(level_19_score) == 0 then
					love.filesystem.write("puzzle_19", count - 1)
				end
				
			elseif puzzle_20 == true then
				local level_20_score = love.filesystem.read("puzzle_20")
				if tonumber(level_20_score) ~= 0 then
					if tonumber(level_20_score) > count - 1 then
						love.filesystem.write("puzzle_20", count - 1)
					else
					end
				elseif tonumber(level_20_score) == 0 then
					love.filesystem.write("puzzle_20", count - 1)
				end
			
			elseif puzzle_21 == true then
				local level_21_score = love.filesystem.read("puzzle_21")
				if tonumber(level_21_score) ~= 0 then
					if tonumber(level_21_score) > count - 1 then
						love.filesystem.write("puzzle_21", count - 1)
					else
					end
				elseif tonumber(level_21_score) == 0 then
					love.filesystem.write("puzzle_21", count - 1)
				end
				
			elseif puzzle_22 == true then
				local level_22_score = love.filesystem.read("puzzle_22")
				if tonumber(level_22_score) ~= 0 then
					if tonumber(level_22_score) > count - 1 then
						love.filesystem.write("puzzle_22", count - 1)
					else
					end
				elseif tonumber(level_22_score) == 0 then
					love.filesystem.write("puzzle_22", count - 1)
				end
			
			elseif puzzle_23 == true then
				local level_23_score = love.filesystem.read("puzzle_23")
				if tonumber(level_23_score) ~= 0 then
					if tonumber(level_23_score) > count - 1 then
						love.filesystem.write("puzzle_23", count - 1)
					else
					end
				elseif tonumber(level_23_score) == 0 then
					love.filesystem.write("puzzle_23", count - 1)
				end
				
			elseif puzzle_24 == true then
				local level_24_score = love.filesystem.read("puzzle_24")
				if tonumber(level_24_score) ~= 0 then
					if tonumber(level_24_score) > count - 1 then
						love.filesystem.write("puzzle_24", count - 1)
					else
					end
				elseif tonumber(level_24_score) == 0 then
					love.filesystem.write("puzzle_24", count - 1)
				end
				
			elseif puzzle_25 == true then
				local level_25_score = love.filesystem.read("puzzle_25")
				if tonumber(level_25_score) ~= 0 then
					if tonumber(level_25_score) > count - 1 then
						love.filesystem.write("puzzle_25", count - 1)
					else
					end
				elseif tonumber(level_25_score) == 0 then
					love.filesystem.write("puzzle_25", count - 1)
				end
				
			elseif puzzle_26 == true then
				local level_26_score = love.filesystem.read("puzzle_26")
				if tonumber(level_26_score) ~= 0 then
					if tonumber(level_26_score) > count - 1 then
						love.filesystem.write("puzzle_26", count - 1)
					else
					end
				elseif tonumber(level_26_score) == 0 then
					love.filesystem.write("puzzle_26", count - 1)
				end
				
			elseif puzzle_27 == true then
				local level_27_score = love.filesystem.read("puzzle_27")
				if tonumber(level_27_score) ~= 0 then
					if tonumber(level_27_score) > count - 1 then
						love.filesystem.write("puzzle_27", count - 1)
					else
					end
				elseif tonumber(level_27_score) == 0 then
					love.filesystem.write("puzzle_27", count - 1)
				end
				
			elseif puzzle_28 == true then
				local level_28_score = love.filesystem.read("puzzle_28")
				if tonumber(level_28_score) ~= 0 then
					if tonumber(level_28_score) > count - 1 then
						love.filesystem.write("puzzle_28", count - 1)
					else
					end
				elseif tonumber(level_28_score) == 0 then
					love.filesystem.write("puzzle_28", count - 1)
				end
				
			elseif puzzle_29 == true then
				local level_29_score = love.filesystem.read("puzzle_29")
				if tonumber(level_29_score) ~= 0 then
					if tonumber(level_29_score) > count - 1 then
						love.filesystem.write("puzzle_29", count - 1)
					else
					end
				elseif tonumber(level_29_score) == 0 then
					love.filesystem.write("puzzle_29", count - 1)
				end
				
			elseif puzzle_30 == true then
				local level_30_score = love.filesystem.read("puzzle_30")
				if tonumber(level_30_score) ~= 0 then
					if tonumber(level_30_score) > count - 1 then
						love.filesystem.write("puzzle_30", count - 1)
					else
					end
				elseif tonumber(level_30_score) == 0 then
					love.filesystem.write("puzzle_30", count - 1)
				end
			else
			end
		else
		end
	else
		if zip3 == true then
			love.audio.play(fail_sound)
		else
		end
	end
	
	zip3 = false
	
	win_menu = true
	
	if count - 1 <= losing_points then
		if win_menu_next_button == true then
			next_button_win_ani:seek(2)
			quit_button_win_ani:seek(3)
			main_button_win_ani:seek(3)
		elseif win_menu_quit_button == true then
			next_button_win_ani:seek(3)
			quit_button_win_ani:seek(2)
			main_button_win_ani:seek(3)
		elseif win_menu_main_button == true then
			next_button_win_ani:seek(3)
			quit_button_win_ani:seek(3)
			main_button_win_ani:seek(2)
		else
		end
	else
		if win_menu_next_button == true then
			next_button_win_ani:seek(4)
			quit_button_win_ani:seek(3)
			main_button_win_ani:seek(3)
		elseif win_menu_quit_button == true then
			next_button_win_ani:seek(5)
			quit_button_win_ani:seek(2)
			main_button_win_ani:seek(3)
		elseif win_menu_main_button == true then
			next_button_win_ani:seek(5)
			quit_button_win_ani:seek(3)
			main_button_win_ani:seek(2)
		else
		end
	end
end

function win_puzzle()
	if ((davidx == beerx) and (davidy == beery)) and ((monkeyx == bananasx) and (monkeyy == bananasy)) then
		cron.every(1, win_timer)
		win_timer()
		movement = false
	end
end

function complete_puzzle()
	function puzzle:update(dt)
		win_ani_part_1:update(dt)
		win_ani_part_1:play()
		local sweet = win_ani_part_1:getCurrentFrame()
		if sweet == 16 then
			win_ani_part_1:stop()
			win_ani_part_2:update(dt)
			win_ani_part_2:play()
			sweet = win_ani_part_2:getCurrentFrame()
			if sweet == 5 then
				win_ani_part_2:setSpeed(0.01)
			elseif sweet == 6 then
				win_ani_part_2:setSpeed(1)
			elseif sweet == 15 then
				win_ani_part_2:stop()
				win_ani_part_3:update(dt)
				win_ani_part_3:play()
				sweet = win_ani_part_3:getCurrentFrame()
				if sweet == 11 then
					win_ani_part_3:stop()
					scoresies_1 = true
				end
			end
		end
	end
end

function reset()
	timer = 70
	timer2 = 100
	timer3 = 70
	zip = true
	zip2 = true
	zip3 = true
	win_menu = false
	scoresies_1 = false
	win_ani_part_1:seek(1)
	win_ani_part_2:seek(16)
	win_ani_part_3:seek(12)
	win_menu_next_button = true
	win_menu_main_button = false
	win_menu_quit_button = false
	main_button_win_ani:seek(1)
	next_button_win_ani:seek(1)
	quit_button_win_ani:seek(1)
end


