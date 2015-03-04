require "libraries/gamestate"
require "levels_green"
require "levels_orange"
require "levels_blue"

level_select_1 = Gamestate.new()

love.filesystem.setIdentity("monkey_see_monkey_do")

--For toggling buttons
local world_1_toggle = true
local world_2_toggle = false
local world_3_toggle = false

--To check to see if the level is playable, if youve beaten the levels up to it
local world_1_ready = true
local world_2_ready = false
local world_3_ready = false

function check_scores()
	local level_1_score = love.filesystem.read("puzzle_1")
	local level_2_score = love.filesystem.read("puzzle_2")
	local level_3_score = love.filesystem.read("puzzle_3")
	local level_4_score = love.filesystem.read("puzzle_4")
	local level_5_score = love.filesystem.read("puzzle_5")
	local level_6_score = love.filesystem.read("puzzle_6")
	local level_7_score = love.filesystem.read("puzzle_7")
	local level_8_score = love.filesystem.read("puzzle_8")
	local level_9_score = love.filesystem.read("puzzle_9")
	local level_10_score = love.filesystem.read("puzzle_10")

	local level_11_score = love.filesystem.read("puzzle_11")
	local level_12_score = love.filesystem.read("puzzle_12")
	local level_13_score = love.filesystem.read("puzzle_13")
	local level_14_score = love.filesystem.read("puzzle_14")
	local level_15_score = love.filesystem.read("puzzle_15")
	local level_16_score = love.filesystem.read("puzzle_16")
	local level_17_score = love.filesystem.read("puzzle_17")
	local level_18_score = love.filesystem.read("puzzle_18")
	local level_19_score = love.filesystem.read("puzzle_19")
	local level_20_score = love.filesystem.read("puzzle_20")

	local level_21_score = love.filesystem.read("puzzle_21")
	local level_22_score = love.filesystem.read("puzzle_22")
	local level_23_score = love.filesystem.read("puzzle_23")
	local level_24_score = love.filesystem.read("puzzle_24")
	local level_25_score = love.filesystem.read("puzzle_25")
	local level_26_score = love.filesystem.read("puzzle_26")
	local level_27_score = love.filesystem.read("puzzle_27")
	local level_28_score = love.filesystem.read("puzzle_28")
	local level_29_score = love.filesystem.read("puzzle_29")
	local level_30_score = love.filesystem.read("puzzle_30")
	
	if level_10_score == "0" then
		world_2:seek(3)
		world_2_ready = false
	else
		world_2:seek(2)
		world_2_ready = true
	end
	
	if level_20_score == "0" then
		world_3:seek(3)
		world_3_ready = false
	else
		world_3:seek(2)
		world_3_ready = true
	end
end





--you are entering, basically, the love.load() of this gamestate
function level_select_1:enter(previous)
	check_scores()
end

--Should be used as love.update
function level_select_1:update(dt)
	
	world_1:update(dt)
	world_2:update(dt)
	world_3:update(dt)

	world_1:stop()
	world_2:stop()
	world_3:stop()
	
end

--Should be used as love.draw
function level_select_1:draw()
	love.graphics.draw(background)
	world_1:draw(36, 76)
	world_2:draw(156, 76)
	world_3:draw(276, 76)
end

--This and other auxiliary love callbacks availible http://vrld.github.com/hump/#gamestate.lua-callbackList
function level_select_1:keypressed(key)
	if key == "right" then
		if world_3_ready == true then
			if world_1_toggle == true then
				world_2_toggle = true
				world_1_toggle = false
				world_2:seek(1)
				world_1:seek(2)
			elseif world_2_toggle == true then
				world_3_toggle = true
				world_2_toggle = false
				world_3:seek(1)
				world_2:seek(2)
			elseif world_3_toggle == true then
				world_3_toggle = false
				world_1_toggle = true
				world_1:seek(1)
				world_3:seek(2)
			end
		elseif world_2_ready == true then
			if world_1_toggle == true then
				world_2_toggle = true
				world_1_toggle = false
				world_2:seek(1)
				world_1:seek(2)
			elseif world_2_toggle == true then
				world_1_toggle = true
				world_2_toggle = false
				world_2:seek(2)
				world_1:seek(1)
			end
		elseif world_2_ready == false then
			--nothing happens
		else
		end
		
	elseif key == "left" then
		if world_3_ready == true then
			if world_1_toggle == true then
				world_3_toggle = true
				world_1_toggle = false
				world_3:seek(1)
				world_1:seek(2)
			elseif world_2_toggle == true then
				world_1_toggle = true
				world_2_toggle = false
				world_1:seek(1)
				world_2:seek(2)
			elseif world_3_toggle == true then
				world_3_toggle = false
				world_2_toggle = true
				world_2:seek(1)
				world_3:seek(2)
			end
		elseif world_2_ready == true then
			if world_1_toggle == true then
				world_2_toggle = true
				world_1_toggle = false
				world_2:seek(1)
				world_1:seek(2)
			elseif world_2_toggle == true then
				world_1_toggle = true
				world_2_toggle = false
				world_2:seek(2)
				world_1:seek(1)
			end
		elseif world_2_ready == false then
			--nothing happens
		else
		end
		
	elseif key == "return" then
		if world_1_toggle == true then
			Gamestate.switch(world_1_10)
		elseif world_2_toggle == true then
			Gamestate.switch(world_2_20)
		elseif world_3_toggle == true then
			Gamestate.switch(world_3_30)
		else
		end

	elseif key == "escape" then
		Gamestate.switch(menu_gamestate)
	else
	end
end

--Called when leaving learnGamestate
function level_select_1:leave()
	world_1_toggle = true
	world_2_toggle = false
	world_3_toggle = false
	
	world_1:seek(1)
end
