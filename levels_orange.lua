require "libraries/gamestate"

world_2_20 = Gamestate.new()

love.filesystem.setIdentity("monkey_see_monkey_do")

--more FUCKING toggling, this time for selection
local pick_2_11 = true
local pick_2_12 = false
local pick_2_13 = false
local pick_2_14 = false
local pick_2_15 = false
local pick_2_16 = false
local pick_2_17 = false
local pick_2_18 = false
local pick_2_19 = false
local pick_2_20 = false

--toggling to see if youve beaten the previous level
local ready_2_11 = true
local ready_2_12 = false
local ready_2_13 = false
local ready_2_14 = false
local ready_2_15 = false
local ready_2_16 = false
local ready_2_17 = false
local ready_2_18 = false
local ready_2_19 = false
local ready_2_20 = false



function check_da_scoresies_orange()

	if level_20_score ~= "0" then
		o_O2_11:seek(1)
		ready_2_11 = true
		
		o_O2_12:seek(2)
		ready_2_12 = true
		
		o_O2_13:seek(2)
		ready_2_13 = true
		
		o_O2_14:seek(2)
		ready_2_14 = true
		
		o_O2_15:seek(2)
		ready_2_15 = true
		
		o_O2_16:seek(2)
		ready_2_16 = true
		
		o_O2_17:seek(2)
		ready_2_17 = true
		
		o_O2_18:seek(2)
		ready_2_18 = true
		
		o_O2_19:seek(2)
		ready_2_19 = true
		
		o_O2_20:seek(2)
		ready_2_20 = true
		
		--MAKE WORLD 2 PLAYABLE
	
	elseif level_19_score ~= "0" then
		o_O2_11:seek(1)
		ready_2_11 = true
		
		o_O2_12:seek(2)
		ready_2_12 = true
		
		o_O2_13:seek(2)
		ready_2_13 = true
		
		o_O2_14:seek(2)
		ready_2_14 = true
		
		o_O2_15:seek(2)
		ready_2_15 = true
		
		o_O2_16:seek(2)
		ready_2_16 = true
		
		o_O2_17:seek(2)
		ready_2_17 = true
		
		o_O2_18:seek(2)
		ready_2_18 = true
		
		o_O2_19:seek(2)
		ready_2_19 = true
		
		o_O2_20:seek(2)
		ready_2_20 = true
	
	elseif level_18_score ~= "0" then
		o_O2_11:seek(2)
		ready_2_11 = true
		
		o_O2_12:seek(2)
		ready_2_12 = true
		
		o_O2_13:seek(2)
		ready_2_13 = true
		
		o_O2_14:seek(2)
		ready_2_14 = true
		
		o_O2_15:seek(2)
		ready_2_15 = true
		
		o_O2_16:seek(2)
		ready_2_16 = true
		
		o_O2_17:seek(2)
		ready_2_17 = true
		
		o_O2_18:seek(2)
		ready_2_18 = true
		
		o_O2_19:seek(2)
		ready_2_19 = true
		
		o_O2_20:seek(3)
		ready_2_20 = false
	
	elseif level_17_score ~= "0" then
		o_O2_11:seek(1)
		ready_2_11 = true
		
		o_O2_12:seek(2)
		ready_2_12 = true
		
		o_O2_13:seek(2)
		ready_2_13 = true
		
		o_O2_14:seek(2)
		ready_2_14 = true
		
		o_O2_15:seek(2)
		ready_2_15 = true
		
		o_O2_16:seek(2)
		ready_2_16 = true
		
		o_O2_17:seek(2)
		ready_2_17 = true
		
		o_O2_18:seek(2)
		ready_2_18 = true
		
		o_O2_19:seek(3)
		ready_2_19 = false
		
		o_O2_20:seek(3)
		ready_2_20 = false
	
	elseif level_16_score ~= "0" then
		o_O2_11:seek(1)
		ready_2_11 = true
		
		o_O2_12:seek(2)
		ready_2_12 = true
		
		o_O2_13:seek(2)
		ready_2_13 = true
		
		o_O2_14:seek(2)
		ready_2_14 = true
		
		o_O2_15:seek(2)
		ready_2_15 = true
		
		o_O2_16:seek(2)
		ready_2_16 = true
		
		o_O2_17:seek(2)
		ready_2_17 = true
		
		o_O2_18:seek(3)
		ready_2_18 = false
		
		o_O2_19:seek(3)
		ready_2_19 = false
		
		o_O2_20:seek(3)
		ready_2_20 = false
	
	elseif level_15_score ~= "0" then
		o_O2_11:seek(1)
		ready_2_11 = true
		
		o_O2_12:seek(2)
		ready_2_12 = true
		
		o_O2_13:seek(2)
		ready_2_13 = true
		
		o_O2_14:seek(2)
		ready_2_14 = true
		
		o_O2_15:seek(2)
		ready_2_15 = true
		
		o_O2_16:seek(2)
		ready_2_16 = true
		
		o_O2_17:seek(3)
		ready_2_17 = false
		
		o_O2_18:seek(3)
		ready_2_18 = false
		
		o_O2_19:seek(3)
		ready_2_19 = false
		
		o_O2_20:seek(3)
		ready_2_20 = false
	
	elseif level_14_score ~= "0" then
		o_O2_11:seek(1)
		ready_2_11 = true
		
		o_O2_12:seek(2)
		ready_2_12 = true
		
		o_O2_13:seek(2)
		ready_2_13 = true
		
		o_O2_14:seek(2)
		ready_2_14 = true
		
		o_O2_15:seek(2)
		ready_2_15 = true
		
		o_O2_16:seek(3)
		ready_2_16 = false
		
		o_O2_17:seek(3)
		ready_2_17 = false
		
		o_O2_18:seek(3)
		ready_2_18 = false
		
		o_O2_19:seek(3)
		ready_2_19 = false
		
		o_O2_20:seek(3)
		ready_2_20 = false
	
	elseif level_13_score ~= "0" then
		o_O2_11:seek(1)
		ready_2_11 = true
		
		o_O2_12:seek(2)
		ready_2_12 = true
		
		o_O2_13:seek(2)
		ready_2_13 = true
		
		o_O2_14:seek(2)
		ready_2_14 = true
		
		o_O2_15:seek(3)
		ready_2_15 = false
		
		o_O2_16:seek(3)
		ready_2_16 = false
		
		o_O2_17:seek(3)
		ready_2_17 = false
		
		o_O2_18:seek(3)
		ready_2_18 = false
		
		o_O2_19:seek(3)
		ready_2_19 = false
		
		o_O2_20:seek(3)
		ready_2_20 = false
	
	elseif level_12_score ~= "0" then
		o_O2_11:seek(1)
		ready_2_11 = true
		
		o_O2_12:seek(2)
		ready_2_12 = true
		
		o_O2_13:seek(2)
		ready_2_13 = true
		
		o_O2_14:seek(3)
		ready_2_14 = false
		
		o_O2_15:seek(3)
		ready_2_15 = false
		
		o_O2_16:seek(3)
		ready_2_16 = false
		
		o_O2_17:seek(3)
		ready_2_17 = false
		
		o_O2_18:seek(3)
		ready_2_18 = false
		
		o_O2_19:seek(3)
		ready_2_119 = false
		
		o_O2_20:seek(3)
		ready_2_20 = false
	
	elseif level_11_score ~= "0" then
		
		o_O2_11:seek(1)
		ready_2_11 = true
		
		o_O2_12:seek(2)
		ready_2_12 = true
		
		o_O2_13:seek(3)
		ready_2_13 = false
		
		o_O2_14:seek(3)
		ready_2_14 = false
		
		o_O2_15:seek(3)
		ready_2_15 = false
		
		o_O2_16:seek(3)
		ready_2_16 = false
		
		o_O2_17:seek(3)
		ready_2_17 = false
		
		o_O2_18:seek(3)
		ready_2_18 = false
		
		o_O2_19:seek(3)
		ready_2_19 = false
		
		o_O2_20:seek(3)
		ready_2_20 = false
	
	elseif level_11_score == "0" then
		
		o_O2_11:seek(1)
		ready_2_11 = true
		
		o_O2_12:seek(3)
		ready_2_12 = false
		
		o_O2_13:seek(3)
		ready_2_13 = false
		
		o_O2_14:seek(3)
		ready_2_14 = false
		
		o_O2_15:seek(3)
		ready_2_15 = false
		
		o_O2_16:seek(3)
		ready_2_16 = false
		
		o_O2_17:seek(3)
		ready_2_17 = false
		
		o_O2_18:seek(3)
		ready_2_18 = false
		
		o_O2_19:seek(3)
		ready_2_19 = false
		
		o_O2_20:seek(3)
		ready_2_20 = false
	end
end

--you are entering, basically, the love.load() of this gamestate
function world_2_20:enter(previous)
	level_11_score = love.filesystem.read("puzzle_11")
	level_12_score = love.filesystem.read("puzzle_12")
	level_13_score = love.filesystem.read("puzzle_13")
	level_14_score = love.filesystem.read("puzzle_14")
	level_15_score = love.filesystem.read("puzzle_15")
	level_16_score = love.filesystem.read("puzzle_16")
	level_17_score = love.filesystem.read("puzzle_17")
	level_18_score = love.filesystem.read("puzzle_18")
	level_19_score = love.filesystem.read("puzzle_19")
	level_20_score = love.filesystem.read("puzzle_20")
	check_da_scoresies_orange()
end

--Should be used as love.update
function world_2_20:update(dt)
	o_O2_11:update(dt)
	o_O2_12:update(dt)
	o_O2_13:update(dt)
	o_O2_14:update(dt)
	o_O2_16:update(dt)
	o_O2_15:update(dt)
	o_O2_17:update(dt)
	o_O2_18:update(dt)
	o_O2_19:update(dt)
	o_O2_20:update(dt)
	
	o_O2_11:stop()
	o_O2_12:stop()
	o_O2_13:stop()
	o_O2_14:stop()
	o_O2_15:stop()
	o_O2_16:stop()
	o_O2_17:stop()
	o_O2_18:stop()
	o_O2_19:stop()
	o_O2_20:stop()
end

--Should be used as love.draw
function world_2_20:draw()
	love.graphics.draw(background)
	o_O2_11:draw(28, 20)
	o_O2_12:draw(98, 20)
	o_O2_13:draw(168, 20)
	o_O2_14:draw(238, 20)
	o_O2_15:draw(308, 20)
	o_O2_16:draw(28, 114)
	o_O2_17:draw(98, 114)
	o_O2_18:draw(168, 114)
	o_O2_19:draw(238, 114)
	o_O2_20:draw(308, 114)
	
	if level_11_score == "0" then
		score_ani_11:draw(8, 240)
	else
		score_ani_11:seek(tonumber(level_11_score))
		score_ani_11:draw(46, 63)
	end
	
	if level_12_score == "0" then
		score_ani_12:draw(8, 240)
	else
		score_ani_12:seek(tonumber(level_12_score))
		score_ani_12:draw(116, 63)
	end
	
	if level_13_score == "0" then
		score_ani_13:draw(8, 240)
	else
		score_ani_13:seek(tonumber(level_13_score))
		score_ani_13:draw(186, 63)
	end
	
	if level_14_score == "0" then
		score_ani_14:draw(8, 240)
	else
		score_ani_14:seek(tonumber(level_14_score))
		score_ani_14:draw(256, 63)
	end
	
	if level_15_score == "0" then
		score_ani_15:draw(8, 240)
	else
		score_ani_15:seek(tonumber(level_15_score))
		score_ani_15:draw(326, 63)
	end
	
	if level_16_score == "0" then
		score_ani_16:draw(8, 240)
	else
		score_ani_16:seek(tonumber(level_16_score))
		score_ani_16:draw(46, 157)
	end
	
	if level_17_score == "0" then
		score_ani_17:draw(8, 240)
	else
		score_ani_17:seek(tonumber(level_17_score))
		score_ani_17:draw(116, 157)
	end
	
	if level_18_score == "0" then
		score_ani_18:draw(8, 240)
	else
		score_ani_18:seek(tonumber(level_18_score))
		score_ani_18:draw(186, 157)
	end
	
	if level_19_score == "0" then
		score_ani_19:draw(8, 240)
	else
		score_ani_19:seek(tonumber(level_19_score))
		score_ani_19:draw(256, 157)
	end
	
	if level_20_score == "0" then
		score_ani_20:draw(8, 240)
	else
		score_ani_20:seek(tonumber(level_20_score))
		score_ani_20:draw(326, 157)
	end
end

--This and other auxiliary love callbacks availible http://vrld.github.com/hump/#gamestate.lua-callbackList
function world_2_20:keypressed(key)
	if key == "right" then
		if ready_2_20 == true then
			if pick_2_11 == true then
				pick_2_12 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_12:seek(1)
			elseif pick_2_12 == true then
				pick_2_13 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_13:seek(1)
			elseif pick_2_13 == true then
				pick_2_14 = true
				pick_2_13 = false
				o_O2_13:seek(2)
				o_O2_14:seek(1)
			elseif pick_2_14 == true then
				pick_2_15 = true
				pick_2_14 = false
				o_O2_14:seek(2)
				o_O2_15:seek(1)
			elseif pick_2_15 == true then
				pick_2_16 = true
				pick_2_15 = false
				o_O2_15:seek(2)
				o_O2_16:seek(1)
			elseif pick_2_16 == true then
				pick_2_17 = true
				pick_2_16 = false
				o_O2_16:seek(2)
				o_O2_17:seek(1)
			elseif pick_2_17 == true then
				pick_2_18 = true
				pick_2_17 = false
				o_O2_17:seek(2)
				o_O2_18:seek(1)
			elseif pick_2_18 == true then
				pick_2_19 = true
				pick_2_18 = false
				o_O2_18:seek(2)
				o_O2_19:seek(1)
			elseif pick_2_19 == true then
				pick_2_20 = true
				pick_2_19 = false
				o_O2_19:seek(2)
				o_O2_20:seek(1)
			elseif pick_2_20 == true then
				pick_2_11 = true
				pick_2_20 = false
				o_O2_20:seek(2)
				o_O2_11:seek(1)
			else
			end
		elseif ready_2_19 == true then
			if pick_2_11 == true then
				pick_2_12 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_12:seek(1)
			elseif pick_2_12 == true then
				pick_2_13 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_13:seek(1)
			elseif pick_2_13 == true then
				pick_2_14 = true
				pick_2_13 = false
				o_O2_13:seek(2)
				o_O2_14:seek(1)
			elseif pick_2_14 == true then
				pick_2_15 = true
				pick_2_14 = false
				o_O2_14:seek(2)
				o_O2_15:seek(1)
			elseif pick_2_15 == true then
				pick_2_16 = true
				pick_2_15 = false
				o_O2_15:seek(2)
				o_O2_16:seek(1)
			elseif pick_2_16 == true then
				pick_2_17 = true
				pick_2_16 = false
				o_O2_16:seek(2)
				o_O2_17:seek(1)
			elseif pick_2_17 == true then
				pick_2_18 = true
				pick_2_17 = false
				o_O2_17:seek(2)
				o_O2_18:seek(1)
			elseif pick_2_18 == true then
				pick_2_19 = true
				pick_2_18 = false
				o_O2_18:seek(2)
				o_O2_19:seek(1)
			elseif pick_2_19 == true then
				pick_2_11 = true
				pick_2_19 = false
				o_O2_19:seek(2)
				o_O2_11:seek(1)
			else
			end	
		elseif ready_2_18 == true then
			if pick_2_11 == true then
				pick_2_12 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_12:seek(1)
			elseif pick_2_12 == true then
				pick_2_13 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_13:seek(1)
			elseif pick_2_13 == true then
				pick_2_14 = true
				pick_2_13 = false
				o_O2_13:seek(2)
				o_O2_14:seek(1)
			elseif pick_2_14 == true then
				pick_2_15 = true
				pick_2_14 = false
				o_O2_14:seek(2)
				o_O2_15:seek(1)
			elseif pick_2_15 == true then
				pick_2_16 = true
				pick_2_15 = false
				o_O2_15:seek(2)
				o_O2_16:seek(1)
			elseif pick_2_16 == true then
				pick_2_17 = true
				pick_2_16 = false
				o_O2_16:seek(2)
				o_O2_17:seek(1)
			elseif pick_2_17 == true then
				pick_2_18 = true
				pick_2_17 = false
				o_O2_17:seek(2)
				o_O2_18:seek(1)
			elseif pick_2_18 == true then
				pick_2_11 = true
				pick_2_18 = false
				o_O2_18:seek(2)
				o_O2_11:seek(1)
			else
			end
		elseif ready_2_17 == true then
			if pick_2_11 == true then
				pick_2_12 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_12:seek(1)
			elseif pick_2_12 == true then
				pick_2_13 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_13:seek(1)
			elseif pick_2_13 == true then
				pick_2_14 = true
				pick_2_13 = false
				o_O2_13:seek(2)
				o_O2_14:seek(1)
			elseif pick_2_14 == true then
				pick_2_15 = true
				pick_2_14 = false
				o_O2_14:seek(2)
				o_O2_15:seek(1)
			elseif pick_2_15 == true then
				pick_2_16 = true
				pick_2_15 = false
				o_O2_15:seek(2)
				o_O2_16:seek(1)
			elseif pick_2_16 == true then
				pick_2_17 = true
				pick_2_16 = false
				o_O2_16:seek(2)
				o_O2_17:seek(1)
			elseif pick_2_17 == true then
				pick_2_11 = true
				pick_2_17 = false
				o_O2_17:seek(2)
				o_O2_11:seek(1)
			else
			end
		elseif ready_2_16 == true then
			if pick_2_11 == true then
				pick_2_12 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_12:seek(1)
			elseif pick_2_12 == true then
				pick_2_13 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_13:seek(1)
			elseif pick_2_13 == true then
				pick_2_14 = true
				pick_2_13 = false
				o_O2_13:seek(2)
				o_O2_14:seek(1)
			elseif pick_2_14 == true then
				pick_2_15 = true
				pick_2_14 = false
				o_O2_14:seek(2)
				o_O2_15:seek(1)
			elseif pick_2_15 == true then
				pick_2_16 = true
				pick_2_15 = false
				o_O2_15:seek(2)
				o_O2_16:seek(1)
			elseif pick_2_16 == true then
				pick_2_11 = true
				pick_2_16 = false
				o_O2_16:seek(2)
				o_O2_11:seek(1)
			else
			end
		elseif ready_2_15 == true then
			if pick_2_11 == true then
				pick_2_12 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_12:seek(1)
			elseif pick_2_12 == true then
				pick_2_13 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_13:seek(1)
			elseif pick_2_13 == true then
				pick_2_14 = true
				pick_2_13 = false
				o_O2_13:seek(2)
				o_O2_14:seek(1)
			elseif pick_2_14 == true then
				pick_2_15 = true
				pick_2_14 = false
				o_O2_14:seek(2)
				o_O2_15:seek(1)
			elseif pick_2_15 == true then
				pick_2_11 = true
				pick_2_15 = false
				o_O2_15:seek(2)
				o_O2_11:seek(1)
			else
			end
		elseif ready_2_14 == true then
			if pick_2_11 == true then
				pick_2_12 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_12:seek(1)
			elseif pick_2_12 == true then
				pick_2_13 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_13:seek(1)
			elseif pick_2_13 == true then
				pick_2_14 = true
				pick_2_13 = false
				o_O2_13:seek(2)
				o_O2_14:seek(1)
			elseif pick_2_14 == true then
				pick_2_11 = true
				pick_2_14 = false
				o_O2_14:seek(2)
				o_O2_11:seek(1)
			else
			end
		elseif ready_2_13 == true then
			if pick_2_11 == true then
				pick_2_12 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_12:seek(1)
			elseif pick_2_12 == true then
				pick_2_13 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_13:seek(1)
			elseif pick_2_13 == true then
				pick_2_11 = true
				pick_2_13 = false
				o_O2_13:seek(2)
				o_O2_11:seek(1)
			else
			end
		elseif ready_2_12 == true then
			if pick_2_11 == true then
				pick_2_12 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_12:seek(1)
			elseif pick_2_12 == true then
				pick_2_11 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_11:seek(1)
			else
			end
		elseif ready_2_11 == true then
			--nothing
		end
	elseif key == "left" then
		if ready_2_20 == true then
			if pick_2_11 == true then
				pick_2_20 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_20:seek(1)
			elseif pick_2_12 == true then
				pick_2_11 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_11:seek(1)
			elseif pick_2_13 == true then
				pick_2_12 = true
				pick_2_13 = false
				o_O2_13:seek(2)
				o_O2_12:seek(1)
			elseif pick_2_14 == true then
				pick_2_13 = true
				pick_2_14 = false
				o_O2_14:seek(2)
				o_O2_13:seek(1)
			elseif pick_2_15 == true then
				pick_2_14 = true
				pick_2_15 = false
				o_O2_15:seek(2)
				o_O2_14:seek(1)
			elseif pick_2_16 == true then
				pick_2_15 = true
				pick_2_16 = false
				o_O2_16:seek(2)
				o_O2_15:seek(1)
			elseif pick_2_17 == true then
				pick_2_16 = true
				pick_2_17 = false
				o_O2_17:seek(2)
				o_O2_16:seek(1)
			elseif pick_2_18 == true then
				pick_2_17 = true
				pick_2_18 = false
				o_O2_18:seek(2)
				o_O2_17:seek(1)
			elseif pick_2_19 == true then
				pick_2_18 = true
				pick_2_19 = false
				o_O2_19:seek(2)
				o_O2_18:seek(1)
			elseif pick_2_20 == true then
				pick_2_19 = true
				pick_2_20 = false
				o_O2_20:seek(2)
				o_O2_19:seek(1)
			else
			end
		elseif ready_2_19 == true then
			if pick_2_11 == true then
				pick_2_19 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_19:seek(1)
			elseif pick_2_12 == true then
				pick_2_11 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_11:seek(1)
			elseif pick_2_13 == true then
				pick_2_12 = true
				pick_2_13 = false
				o_O2_13:seek(2)
				o_O2_12:seek(1)
			elseif pick_2_14 == true then
				pick_2_13 = true
				pick_2_14 = false
				o_O2_14:seek(2)
				o_O2_13:seek(1)
			elseif pick_2_15 == true then
				pick_2_14 = true
				pick_2_15 = false
				o_O2_15:seek(2)
				o_O2_14:seek(1)
			elseif pick_2_16 == true then
				pick_2_15 = true
				pick_2_16 = false
				o_O2_16:seek(2)
				o_O2_15:seek(1)
			elseif pick_2_17 == true then
				pick_2_16 = true
				pick_2_17 = false
				o_O2_17:seek(2)
				o_O2_16:seek(1)
			elseif pick_2_18 == true then
				pick_2_17 = true
				pick_2_18 = false
				o_O2_18:seek(2)
				o_O2_17:seek(1)
			elseif pick_2_19 == true then
				pick_2_18 = true
				pick_2_19 = false
				o_O2_19:seek(2)
				o_O2_18:seek(1)
			else
			end
		elseif ready_2_18 == true then
			if pick_2_11 == true then
				pick_2_18 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_18:seek(1)
			elseif pick_2_12 == true then
				pick_2_11 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_11:seek(1)
			elseif pick_2_13 == true then
				pick_2_12 = true
				pick_2_13 = false
				o_O2_13:seek(2)
				o_O2_12:seek(1)
			elseif pick_2_14 == true then
				pick_2_13 = true
				pick_2_14 = false
				o_O2_14:seek(2)
				o_O2_13:seek(1)
			elseif pick_2_15 == true then
				pick_2_14 = true
				pick_2_15 = false
				o_O2_15:seek(2)
				o_O2_14:seek(1)
			elseif pick_2_16 == true then
				pick_2_15 = true
				pick_2_16 = false
				o_O2_16:seek(2)
				o_O2_15:seek(1)
			elseif pick_2_17 == true then
				pick_2_16 = true
				pick_2_17 = false
				o_O2_17:seek(2)
				o_O2_16:seek(1)
			elseif pick_2_18 == true then
				pick_2_17 = true
				pick_2_18 = false
				o_O2_18:seek(2)
				o_O2_17:seek(1)
			else
			end
		elseif ready_2_17 == true then
			if pick_2_11 == true then
				pick_2_17 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_17:seek(1)
			elseif pick_2_12 == true then
				pick_2_11 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_11:seek(1)
			elseif pick_2_13 == true then
				pick_2_12 = true
				pick_2_13 = false
				o_O2_13:seek(2)
				o_O2_12:seek(1)
			elseif pick_2_14 == true then
				pick_2_13 = true
				pick_2_14 = false
				o_O2_14:seek(2)
				o_O2_13:seek(1)
			elseif pick_2_15 == true then
				pick_2_14 = true
				pick_2_15 = false
				o_O2_15:seek(2)
				o_O2_14:seek(1)
			elseif pick_2_16 == true then
				pick_2_15 = true
				pick_2_16 = false
				o_O2_16:seek(2)
				o_O2_15:seek(1)
			elseif pick_2_17 == true then
				pick_2_16 = true
				pick_2_17 = false
				o_O2_17:seek(2)
				o_O2_16:seek(1)
			else
			end
		elseif ready_2_16 == true then
			if pick_2_11 == true then
				pick_2_16 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_16:seek(1)
			elseif pick_2_12 == true then
				pick_2_11 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_11:seek(1)
			elseif pick_2_13 == true then
				pick_2_12 = true
				pick_2_13 = false
				o_O2_13:seek(2)
				o_O2_12:seek(1)
			elseif pick_2_14 == true then
				pick_2_13 = true
				pick_2_14 = false
				o_O2_14:seek(2)
				o_O2_13:seek(1)
			elseif pick_2_15 == true then
				pick_2_14 = true
				pick_2_15 = false
				o_O2_15:seek(2)
				o_O2_14:seek(1)
			elseif pick_2_16 == true then
				pick_2_15 = true
				pick_2_16 = false
				o_O2_16:seek(2)
				o_O2_15:seek(1)
			else
			end
		elseif ready_2_15 == true then
			if pick_2_11 == true then
				pick_2_15 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_15:seek(1)
			elseif pick_2_12 == true then
				pick_2_11 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_11:seek(1)
			elseif pick_2_13 == true then
				pick_2_12 = true
				pick_2_13 = false
				o_O2_13:seek(2)
				o_O2_12:seek(1)
			elseif pick_2_14 == true then
				pick_2_13 = true
				pick_2_14 = false
				o_O2_14:seek(2)
				o_O2_13:seek(1)
			elseif pick_2_15 == true then
				pick_2_14 = true
				pick_2_15 = false
				o_O2_15:seek(2)
				o_O2_14:seek(1)
			else
			end
		elseif ready_2_14 == true then
			if pick_2_11 == true then
				pick_2_14 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_14:seek(1)
			elseif pick_2_12 == true then
				pick_2_11 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_11:seek(1)
			elseif pick_2_13 == true then
				pick_2_12 = true
				pick_2_13 = false
				o_O2_13:seek(2)
				o_O2_12:seek(1)
			elseif pick_2_14 == true then
				pick_2_13 = true
				pick_2_14 = false
				o_O2_14:seek(2)
				o_O2_13:seek(1)
			else
			end
		elseif ready_2_13 == true then
			if pick_2_11 == true then
				pick_2_13 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_13:seek(1)
			elseif pick_2_12 == true then
				pick_2_11 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_11:seek(1)
			elseif pick_2_13 == true then
				pick_2_12 = true
				pick_2_13 = false
				o_O2_13:seek(2)
				o_O2_12:seek(1)
			else
			end
		elseif ready_2_12 == true then
			if pick_2_11 == true then
				pick_2_12 = true
				pick_2_11 = false
				o_O2_11:seek(2)
				o_O2_12:seek(1)
			elseif pick_2_12 == true then
				pick_2_11 = true
				pick_2_12 = false
				o_O2_12:seek(2)
				o_O2_11:seek(1)
			else
			end
		elseif ready_2_11 == true then
			--nothing
		else
		end
	elseif key == "return" then
		puzzle_1 = false
		puzzle_2 = false
		puzzle_3 = false
		puzzle_4 = false
		puzzle_5 = false
		puzzle_6 = false
		puzzle_7 = false
		puzzle_8 = false
		puzzle_9 = false
		puzzle_10 = false
		puzzle_11 = false
		puzzle_12 = false
		puzzle_13 = false
		puzzle_14 = false
		puzzle_15 = false
		puzzle_16 = false
		puzzle_17 = false
		puzzle_18 = false
		puzzle_19 = false
		puzzle_20 = false
		puzzle_21 = false
		puzzle_22 = false
		puzzle_23 = false
		puzzle_24 = false
		puzzle_25 = false
		puzzle_26 = false
		puzzle_27 = false
		puzzle_28 = false
		puzzle_29 = false
		puzzle_30 = false
		
		if pick_2_11 == true then
			puzzle_11 = true
		elseif pick_2_12 == true then
			puzzle_12 = true
		elseif pick_2_13 == true then
			puzzle_13 = true
		elseif pick_2_14 == true then
			puzzle_14 = true
		elseif pick_2_15 == true then
			puzzle_15 = true
		elseif pick_2_16 == true then
			puzzle_16 = true
		elseif pick_2_17 == true then
			puzzle_17 = true
		elseif pick_2_18 == true then
			puzzle_18 = true
		elseif pick_2_19 == true then
			puzzle_19 = true
		elseif pick_2_20 == true then
			puzzle_20 = true
		end
		Gamestate.switch(puzzle)
		
	elseif key == "escape" then
		Gamestate.switch(level_select_1)
	else
	end
end


--Called when leaving learnGamestate
function world_2_20:leave()
	pick_2_11 = true
	pick_2_12 = false
	pick_2_13 = false
	pick_2_14 = false
	pick_2_15 = false
	pick_2_16 = false
	pick_2_17 = false
	pick_2_18 = false
	pick_2_19 = false
	pick_2_20 = false
	
	ready_2_11 = true
	ready_2_12 = false
	ready_2_13 = false
	ready_2_14 = false
	ready_2_15 = false
	ready_2_16 = false
	ready_2_17 = false
	ready_2_18 = false
	ready_2_19 = false
	ready_2_20 = false
end
