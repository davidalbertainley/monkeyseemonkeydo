require "menu"
require "libraries/AnAL"
require "game"


love.filesystem.setIdentity("monkey_see_monkey_do")

function love.load()
	--Loading the static pictures
	background = love.graphics.newImage("images/background.png")
	
	boy_animations = love.graphics.newImage("images/character_sprites/jumpani.png")
	monkey_animations = love.graphics.newImage("images/character_sprites/monkey_sheet.png")
	
	cage = love.graphics.newImage("images/cage.png")
	tester1 = love.graphics.newImage("images/tester1.png") --left
	tester2 = love.graphics.newImage("images/tester2.png") -- right
	tester3 = love.graphics.newImage("images/tester3.png") --bottom
	tester4 = love.graphics.newImage("images/tester4.png") -- top
	tester5 = love.graphics.newImage("images/tester5.png")
	tester6 = love.graphics.newImage("images/tester6.png")
	tester7 = love.graphics.newImage("images/tester7.png")
	tester8 = love.graphics.newImage("images/tester8.png")
	box = love.graphics.newImage("images/box1.png")
	score_board = love.graphics.newImage("images/score_board.png")
	score_sheet = love.graphics.newImage("images/number_sheet.png")
	menu_background = love.graphics.newImage("images/menu_background.png")
	start_button = love.graphics.newImage("images/start_button_sheet.png")
	levels_button = love.graphics.newImage("images/levels_button_sheet.png")
	quit_button = love.graphics.newImage("images/quit_button_sheet.png")
	beer_sheet = love.graphics.newImage("images/beer.png")
	
	bananas_sheet = love.graphics.newImage("images/bananas.png")
	
	world_1_sheet = love.graphics.newImage("images/world_selects/world_1.png")
	world_2_sheet = love.graphics.newImage("images/world_selects/world_2.png")
	world_3_sheet = love.graphics.newImage("images/world_selects/world_3.png")
	
	one_one_sheet = love.graphics.newImage("images/level_selects/1_1.png")
	one_two_sheet = love.graphics.newImage("images/level_selects/1_2.png")
	one_three_sheet = love.graphics.newImage("images/level_selects/1_3.png")
	one_four_sheet = love.graphics.newImage("images/level_selects/1_4.png")
	one_five_sheet = love.graphics.newImage("images/level_selects/1_5.png")
	one_six_sheet = love.graphics.newImage("images/level_selects/1_6.png")
	one_seven_sheet = love.graphics.newImage("images/level_selects/1_7.png")
	one_eight_sheet = love.graphics.newImage("images/level_selects/1_8.png")
	one_nine_sheet = love.graphics.newImage("images/level_selects/1_9.png")
	one_ten_sheet = love.graphics.newImage("images/level_selects/1_10.png")
	
	two_eleven_sheet = love.graphics.newImage("images/level_selects/2_11.png")
	two_twelve_sheet = love.graphics.newImage("images/level_selects/2_12.png")
	two_thirteen_sheet = love.graphics.newImage("images/level_selects/2_13.png")
	two_fourteen_sheet = love.graphics.newImage("images/level_selects/2_14.png")
	two_fifteen_sheet = love.graphics.newImage("images/level_selects/2_15.png")
	two_sixteen_sheet = love.graphics.newImage("images/level_selects/2_16.png")
	two_seventeen_sheet = love.graphics.newImage("images/level_selects/2_17.png")
	two_eighteen_sheet = love.graphics.newImage("images/level_selects/2_18.png")
	two_nineteen_sheet = love.graphics.newImage("images/level_selects/2_19.png")
	two_twenty_sheet = love.graphics.newImage("images/level_selects/2_20.png")
	
	three_twenty_one_sheet = love.graphics.newImage("images/level_selects/3_21.png")
	three_twenty_two_sheet = love.graphics.newImage("images/level_selects/3_22.png")
	three_twenty_three_sheet = love.graphics.newImage("images/level_selects/3_23.png")
	three_twenty_four_sheet = love.graphics.newImage("images/level_selects/3_24.png")
	three_twenty_five_sheet = love.graphics.newImage("images/level_selects/3_25.png")
	three_twenty_six_sheet = love.graphics.newImage("images/level_selects/3_26.png")
	three_twenty_seven_sheet = love.graphics.newImage("images/level_selects/3_27.png")
	three_twenty_eight_sheet = love.graphics.newImage("images/level_selects/3_28.png")
	three_twenty_nine_sheet = love.graphics.newImage("images/level_selects/3_29.png")
	three_thirty_sheet = love.graphics.newImage("images/level_selects/3_30.png")
	
	score_sheet_2 = love.graphics.newImage("images/level_selects/score_sheet.png")
	
	sup = love.graphics.newImage("images/sup.png")
	escape_retry = love.graphics.newImage("images/escape_retry.png")
	escape_levels = love.graphics.newImage("images/escape_levels.png")
	escape_main = love.graphics.newImage("images/escape_main.png")
	win_ani_sheet_1 = love.graphics.newImage("images/win_ani/win_ani_part_1.png")
	win_ani_sheet_2 = love.graphics.newImage("images/win_ani/win_ani_part_2.png")
	win_ani_sheet_3 = love.graphics.newImage("images/win_ani/win_ani_part_3.png")
	main_button_win_sheet = love.graphics.newImage("images/main_button_win.png")
	next_button_win_sheet = love.graphics.newImage("images/next_button_win.png")
	quit_button_win_sheet = love.graphics.newImage("images/quit_button_win.png")
	
	
	jump_sound = love.audio.newSource("sounds/test8.ogg", "static")
	fall_sound = love.audio.newSource("sounds/test9.ogg", "static")
	walk_sound = love.audio.newSource("sounds/walk2.ogg", "static")
	check_sound = love.audio.newSource("sounds/check.ogg", "static")
	end_score_sound = love.audio.newSource("sounds/score.ogg", "static")
	pass_sound = love.audio.newSource("sounds/pass.ogg", "static")
	fail_sound = love.audio.newSource("sounds/fail.ogg", "static")
	
	--Creating animations
	boy_jump_animation = newAnimation(boy_animations, 64, 64, 0.4, 64)
	boy_jump_animation:setMode("loop")
	monkey_various_animations = newAnimation(monkey_animations, 64, 64, 0.4, 128)
	monkey_various_animations:setMode("loop")
	the_score = newAnimation(score_sheet, 64, 32, 0.4, 128)
	the_score:setMode("loop")
	the_score_2 = newAnimation(score_sheet, 64, 32, 0.4, 128)
	the_score:setMode("loop")
	start_button_ani = newAnimation(start_button, 120, 33, 0.4, 2)
	levels_button_ani = newAnimation(levels_button, 120, 33, 0.4, 2)
	quit_button_ani = newAnimation(quit_button, 120, 33, 0.4, 2)
	beer = newAnimation(beer_sheet, 44, 88, 0.4, 2)
	bananas = newAnimation(bananas_sheet, 44, 88, 0.4, 2)
	world_1 = newAnimation(world_1_sheet, 88, 88, 0.4, 3)
	world_2 = newAnimation(world_2_sheet, 88, 88, 0.4, 3)
	world_3 = newAnimation(world_3_sheet, 88, 88, 0.4, 3)
	o_O1_1 = newAnimation(one_one_sheet, 64, 86, 0.4, 3)
	o_O1_2 = newAnimation(one_two_sheet, 64, 86, 0.4, 3)
	o_O1_3 = newAnimation(one_three_sheet, 64, 86, 0.4, 3)
	o_O1_4 = newAnimation(one_four_sheet, 64, 86, 0.4, 3)
	o_O1_5 = newAnimation(one_five_sheet, 64, 86, 0.4, 3)
	o_O1_6 = newAnimation(one_six_sheet, 64, 86, 0.4, 3)
	o_O1_7 = newAnimation(one_seven_sheet, 64, 86, 0.4, 3)
	o_O1_8 = newAnimation(one_eight_sheet, 64, 86, 0.4, 3)
	o_O1_9 = newAnimation(one_nine_sheet, 64, 86, 0.4, 3)
	o_O1_10 = newAnimation(one_ten_sheet, 64, 86, 0.4, 3)
	o_O2_11 = newAnimation(two_eleven_sheet, 64, 86, 0.4, 3)
	o_O2_12 = newAnimation(two_twelve_sheet, 64, 86, 0.4, 3)
	o_O2_13 = newAnimation(two_thirteen_sheet, 64, 86, 0.4, 3)
	o_O2_14 = newAnimation(two_fourteen_sheet, 64, 86, 0.4, 3)
	o_O2_15 = newAnimation(two_fifteen_sheet, 64, 86, 0.4, 3)
	o_O2_16 = newAnimation(two_sixteen_sheet, 64, 86, 0.4, 3)
	o_O2_17 = newAnimation(two_seventeen_sheet, 64, 86, 0.4, 3)
	o_O2_18 = newAnimation(two_eighteen_sheet, 64, 86, 0.4, 3)
	o_O2_19 = newAnimation(two_nineteen_sheet, 64, 86, 0.4, 3)
	o_O2_20 = newAnimation(two_twenty_sheet, 64, 86, 0.4, 3)
	o_O3_21 = newAnimation(three_twenty_one_sheet, 64, 86, 0.4, 3)
	o_O3_22 = newAnimation(three_twenty_two_sheet, 64, 86, 0.4, 3)
	o_O3_23 = newAnimation(three_twenty_three_sheet, 64, 86, 0.4, 3)
	o_O3_24 = newAnimation(three_twenty_four_sheet, 64, 86, 0.4, 3)
	o_O3_25 = newAnimation(three_twenty_five_sheet, 64, 86, 0.4, 3)
	o_O3_26 = newAnimation(three_twenty_six_sheet, 64, 86, 0.4, 3)
	o_O3_27 = newAnimation(three_twenty_seven_sheet, 64, 86, 0.4, 3)
	o_O3_28 = newAnimation(three_twenty_eight_sheet, 64, 86, 0.4, 3)
	o_O3_29 = newAnimation(three_twenty_nine_sheet, 64, 86, 0.4, 3)
	o_O3_30 = newAnimation(three_thirty_sheet, 64, 86, 0.4, 3)
	
	score_ani_1 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_2 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_3 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_4 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_5 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_6 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_7 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_8 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_9 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_10 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_11 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_12 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_13 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_14 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_15 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_16 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_17 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_18 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_19 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_20 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_21 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_22 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_23 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_24 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_25 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_26 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_27 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_28 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_29 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	score_ani_30 = newAnimation(score_sheet_2, 32, 32, 0.4, 16)
	
	
	sup_ani = newAnimation(sup, 512, 256, 0.4, 2)
	escape_retry_ani = newAnimation(escape_retry, 256, 64, 0.4, 4)
	escape_levels_ani = newAnimation(escape_levels, 256, 64, 0.4, 4)
	escape_main_ani = newAnimation(escape_main, 256, 64, 0.4, 4)
	main_button_win_ani = newAnimation(main_button_win_sheet, 120, 33, 0.4, 3)
	next_button_win_ani = newAnimation(next_button_win_sheet, 120, 33, 0.4, 5)
	quit_button_win_ani = newAnimation(quit_button_win_sheet, 120, 33, 0.4, 3)
	quit_button_win_ani:setMode("loop")
	win_ani_part_1 = newAnimation(win_ani_sheet_1, 512, 256, 0.025, 16)
	win_ani_part_2 = newAnimation(win_ani_sheet_2, 512, 256, 0.025, 16)
	win_ani_part_3 = newAnimation(win_ani_sheet_3, 512, 256, 0.025, 12)
	
	font = love.graphics.newFont("04B_03_.TTF", 24)
	
	a = {
		puzzle_1 = false,
		puzzle_2 = false,
		puzzle_3 = false,
		puzzle_4 = false,
		puzzle_5 = false,
		puzzle_6 = false,
		puzzle_7 = false,
		puzzle_8 = false,
		puzzle_9 = false,
		puzzle_10 = false,
		puzzle_11 = false,
		puzzle_12 = false,
		puzzle_13 = false,
		puzzle_14 = false,
		puzzle_15 = false,
		puzzle_16 = false,
		puzzle_17 = false,
		puzzle_18 = false,
		puzzle_19 = false,
		puzzle_20 = false,
		puzzle_21 = false,
		puzzle_22 = false,
		puzzle_23 = false,
		puzzle_24 = false,
		puzzle_25 = false,
		puzzle_26 = false,
		puzzle_27 = false,
		puzzle_28 = false,
		puzzle_29 = false,
		puzzle_30 = false
	}

	
	derp()

end

function love.update(dt)
	--Update the Gamestate
	Gamestate.update(dt)
end

function love.draw()
	--Draw the Gamestate
	Gamestate.draw()
	
	
end

function derp()
--Creating files to save to whenever a puzzle is fixed.  Sweet.
	love.filesystem.setIdentity("monkey_see_monkey_do")
	
	if not love.filesystem.exists("puzzle_1") then
		love.filesystem.newFile("puzzle_1")
        love.filesystem.newFile("puzzle_2")
		love.filesystem.newFile("puzzle_3")
		love.filesystem.newFile("puzzle_4")
		love.filesystem.newFile("puzzle_5")
		love.filesystem.newFile("puzzle_6")
		love.filesystem.newFile("puzzle_7")
		love.filesystem.newFile("puzzle_8")
		love.filesystem.newFile("puzzle_9")
		love.filesystem.newFile("puzzle_10")
		love.filesystem.newFile("puzzle_11")
		love.filesystem.newFile("puzzle_12")
		love.filesystem.newFile("puzzle_13")
		love.filesystem.newFile("puzzle_14")
		love.filesystem.newFile("puzzle_15")
		love.filesystem.newFile("puzzle_16")
		love.filesystem.newFile("puzzle_17")
		love.filesystem.newFile("puzzle_18")
		love.filesystem.newFile("puzzle_19")
		love.filesystem.newFile("puzzle_20")
		love.filesystem.newFile("puzzle_21")
		love.filesystem.newFile("puzzle_22")
		love.filesystem.newFile("puzzle_23")
		love.filesystem.newFile("puzzle_24")
		love.filesystem.newFile("puzzle_25")
		love.filesystem.newFile("puzzle_26")
		love.filesystem.newFile("puzzle_27")
		love.filesystem.newFile("puzzle_28")
		love.filesystem.newFile("puzzle_29")
		love.filesystem.newFile("puzzle_30")
		
        love.filesystem.write("puzzle_1", 0)
		love.filesystem.write("puzzle_2", 0)
		love.filesystem.write("puzzle_3", 0)
		love.filesystem.write("puzzle_4", 0)
		love.filesystem.write("puzzle_5", 0)
		love.filesystem.write("puzzle_6", 0)
		love.filesystem.write("puzzle_7", 0)
		love.filesystem.write("puzzle_8", 0)
		love.filesystem.write("puzzle_9", 0)
		love.filesystem.write("puzzle_10", 0)
		love.filesystem.write("puzzle_11", 0)
		love.filesystem.write("puzzle_12", 0)
		love.filesystem.write("puzzle_13", 0)
		love.filesystem.write("puzzle_14", 0)
		love.filesystem.write("puzzle_15", 0)
		love.filesystem.write("puzzle_16", 0)
		love.filesystem.write("puzzle_17", 0)
		love.filesystem.write("puzzle_18", 0)
		love.filesystem.write("puzzle_19", 0)
		love.filesystem.write("puzzle_20", 0)
		love.filesystem.write("puzzle_21", 0)
		love.filesystem.write("puzzle_22", 0)
		love.filesystem.write("puzzle_23", 0)
		love.filesystem.write("puzzle_24", 0)
		love.filesystem.write("puzzle_25", 0)
		love.filesystem.write("puzzle_26", 0)
		love.filesystem.write("puzzle_27", 0)
		love.filesystem.write("puzzle_28", 0)
		love.filesystem.write("puzzle_29", 0)
		love.filesystem.write("puzzle_30", 0)
	
    end
	
	derp2()
end

function derp2()
	Gamestate.switch(menu_gamestate)
end

function love.keypressed(key)
	Gamestate.keypressed(key)
end
