require "libraries/gamestate"

world_1_10 = Gamestate.new()

love.filesystem.setIdentity("monkey_see_monkey_do")

--more FUCKING toggling, this time for selection
local pick_1_1 = true
local pick_1_2 = false
local pick_1_3 = false
local pick_1_4 = false
local pick_1_5 = false
local pick_1_6 = false
local pick_1_7 = false
local pick_1_8 = false
local pick_1_9 = false
local pick_1_10 = false

--toggling to see if youve beaten the previous level
local ready_1_1 = true
local ready_1_2 = false
local ready_1_3 = false
local ready_1_4 = false
local ready_1_5 = false
local ready_1_6 = false
local ready_1_7 = false
local ready_1_8 = false
local ready_1_9 = false
local ready_1_10 = false

function check_da_scoresies()

	if level_10_score ~= "0" then
		o_O1_1:seek(1)
		ready_1_1 = true
		
		o_O1_2:seek(2)
		ready_1_2 = true
		
		o_O1_3:seek(2)
		ready_1_3 = true
		
		o_O1_4:seek(2)
		ready_1_4 = true
		
		o_O1_5:seek(2)
		ready_1_5 = true
		
		o_O1_6:seek(2)
		ready_1_6 = true
		
		o_O1_7:seek(2)
		ready_1_7 = true
		
		o_O1_8:seek(2)
		ready_1_8 = true
		
		o_O1_9:seek(2)
		ready_1_9 = true
		
		o_O1_10:seek(2)
		ready_1_10 = true
		
		--MAKE WORLD 2 PLAYABLE
	
	elseif level_9_score ~= "0" then
		o_O1_1:seek(1)
		ready_1_1 = true
		
		o_O1_2:seek(2)
		ready_1_2 = true
		
		o_O1_3:seek(2)
		ready_1_3 = true
		
		o_O1_4:seek(2)
		ready_1_4 = true
		
		o_O1_5:seek(2)
		ready_1_5 = true
		
		o_O1_6:seek(2)
		ready_1_6 = true
		
		o_O1_7:seek(2)
		ready_1_7 = true
		
		o_O1_8:seek(2)
		ready_1_8 = true
		
		o_O1_9:seek(2)
		ready_1_9 = true
		
		o_O1_10:seek(2)
		ready_1_10 = true
	
	elseif level_8_score ~= "0" then
		o_O1_1:seek(2)
		ready_1_1 = true
		
		o_O1_2:seek(2)
		ready_1_2 = true
		
		o_O1_3:seek(2)
		ready_1_3 = true
		
		o_O1_4:seek(2)
		ready_1_4 = true
		
		o_O1_5:seek(2)
		ready_1_5 = true
		
		o_O1_6:seek(2)
		ready_1_6 = true
		
		o_O1_7:seek(2)
		ready_1_7 = true
		
		o_O1_8:seek(2)
		ready_1_8 = true
		
		o_O1_9:seek(2)
		ready_1_9 = true
		
		o_O1_10:seek(3)
		ready_1_10 = false
	
	elseif level_7_score ~= "0" then
		o_O1_1:seek(1)
		ready_1_1 = true
		
		o_O1_2:seek(2)
		ready_1_2 = true
		
		o_O1_3:seek(2)
		ready_1_3 = true
		
		o_O1_4:seek(2)
		ready_1_4 = true
		
		o_O1_5:seek(2)
		ready_1_5 = true
		
		o_O1_6:seek(2)
		ready_1_6 = true
		
		o_O1_7:seek(2)
		ready_1_7 = true
		
		o_O1_8:seek(2)
		ready_1_8 = true
		
		o_O1_9:seek(3)
		ready_1_9 = false
		
		o_O1_10:seek(3)
		ready_1_10 = false
	
	elseif level_6_score ~= "0" then
		o_O1_1:seek(1)
		ready_1_1 = true
		
		o_O1_2:seek(2)
		ready_1_2 = true
		
		o_O1_3:seek(2)
		ready_1_3 = true
		
		o_O1_4:seek(2)
		ready_1_4 = true
		
		o_O1_5:seek(2)
		ready_1_5 = true
		
		o_O1_6:seek(2)
		ready_1_6 = true
		
		o_O1_7:seek(2)
		ready_1_7 = true
		
		o_O1_8:seek(3)
		ready_1_8 = false
		
		o_O1_9:seek(3)
		ready_1_9 = false
		
		o_O1_10:seek(3)
		ready_1_10 = false
	
	elseif level_5_score ~= "0" then
		o_O1_1:seek(1)
		ready_1_1 = true
		
		o_O1_2:seek(2)
		ready_1_2 = true
		
		o_O1_3:seek(2)
		ready_1_3 = true
		
		o_O1_4:seek(2)
		ready_1_4 = true
		
		o_O1_5:seek(2)
		ready_1_5 = true
		
		o_O1_6:seek(2)
		ready_1_6 = true
		
		o_O1_7:seek(3)
		ready_1_7 = false
		
		o_O1_8:seek(3)
		ready_1_8 = false
		
		o_O1_9:seek(3)
		ready_1_9 = false
		
		o_O1_10:seek(3)
		ready_1_10 = false
	
	elseif level_4_score ~= "0" then
		o_O1_1:seek(1)
		ready_1_1 = true
		
		o_O1_2:seek(2)
		ready_1_2 = true
		
		o_O1_3:seek(2)
		ready_1_3 = true
		
		o_O1_4:seek(2)
		ready_1_4 = true
		
		o_O1_5:seek(2)
		ready_1_5 = true
		
		o_O1_6:seek(3)
		ready_1_6 = false
		
		o_O1_7:seek(3)
		ready_1_7 = false
		
		o_O1_8:seek(3)
		ready_1_8 = false
		
		o_O1_9:seek(3)
		ready_1_9 = false
		
		o_O1_10:seek(3)
		ready_1_10 = false
	
	elseif level_3_score ~= "0" then
		o_O1_1:seek(1)
		ready_1_1 = true
		
		o_O1_2:seek(2)
		ready_1_2 = true
		
		o_O1_3:seek(2)
		ready_1_3 = true
		
		o_O1_4:seek(2)
		ready_1_4 = true
		
		o_O1_5:seek(3)
		ready_1_5 = false
		
		o_O1_6:seek(3)
		ready_1_6 = false
		
		o_O1_7:seek(3)
		ready_1_7 = false
		
		o_O1_8:seek(3)
		ready_1_8 = false
		
		o_O1_9:seek(3)
		ready_1_9 = false
		
		o_O1_10:seek(3)
		ready_1_10 = false
	
	elseif level_2_score ~= "0" then
		o_O1_1:seek(1)
		ready_1_1 = true
		
		o_O1_2:seek(2)
		ready_1_2 = true
		
		o_O1_3:seek(2)
		ready_1_3 = true
		
		o_O1_4:seek(3)
		ready_1_4 = false
		
		o_O1_5:seek(3)
		ready_1_5 = false
		
		o_O1_6:seek(3)
		ready_1_6 = false
		
		o_O1_7:seek(3)
		ready_1_7 = false
		
		o_O1_8:seek(3)
		ready_1_8 = false
		
		o_O1_9:seek(3)
		ready_1_9 = false
		
		o_O1_10:seek(3)
		ready_1_10 = false
	
	elseif level_1_score ~= "0" then
		
		o_O1_1:seek(1)
		ready_1_1 = true
		
		o_O1_2:seek(2)
		ready_1_2 = true
		
		o_O1_3:seek(3)
		ready_1_3 = false
		
		o_O1_4:seek(3)
		ready_1_4 = false
		
		o_O1_5:seek(3)
		ready_1_5 = false
		
		o_O1_6:seek(3)
		ready_1_6 = false
		
		o_O1_7:seek(3)
		ready_1_7 = false
		
		o_O1_8:seek(3)
		ready_1_8 = false
		
		o_O1_9:seek(3)
		ready_1_9 = false
		
		o_O1_10:seek(3)
		ready_1_10 = false
		
	elseif level_1_score == "0" then
		o_O1_1:seek(1)
		ready_1_1 = true
		
		o_O1_2:seek(3)
		ready_1_2 = false
		
		o_O1_3:seek(3)
		ready_1_3 = false
		
		o_O1_4:seek(3)
		ready_1_4 = false
		
		o_O1_5:seek(3)
		ready_1_5 = false
		
		o_O1_6:seek(3)
		ready_1_6 = false
		
		o_O1_7:seek(3)
		ready_1_7 = false
		
		o_O1_8:seek(3)
		ready_1_8 = false
		
		o_O1_9:seek(3)
		ready_1_9 = false
		
		o_O1_10:seek(3)
		ready_1_10 = false
	
	end
	
end




--you are entering, basically, the love.load() of this gamestate
function world_1_10:enter(previous)
	level_1_score = love.filesystem.read("puzzle_1")
	level_2_score = love.filesystem.read("puzzle_2")
	level_3_score = love.filesystem.read("puzzle_3")
	level_4_score = love.filesystem.read("puzzle_4")
	level_5_score = love.filesystem.read("puzzle_5")
	level_6_score = love.filesystem.read("puzzle_6")
	level_7_score = love.filesystem.read("puzzle_7")
	level_8_score = love.filesystem.read("puzzle_8")
	level_9_score = love.filesystem.read("puzzle_9")
	level_10_score = love.filesystem.read("puzzle_10")
	check_da_scoresies()
end

--Should be used as love.update
function world_1_10:update(dt)
	o_O1_1:update(dt)
	o_O1_2:update(dt)
	o_O1_3:update(dt)
	o_O1_4:update(dt)
	o_O1_6:update(dt)
	o_O1_5:update(dt)
	o_O1_7:update(dt)
	o_O1_8:update(dt)
	o_O1_9:update(dt)
	o_O1_10:update(dt)
	
	o_O1_1:stop()
	o_O1_2:stop()
	o_O1_3:stop()
	o_O1_4:stop()
	o_O1_5:stop()
	o_O1_6:stop()
	o_O1_7:stop()
	o_O1_8:stop()
	o_O1_9:stop()
	o_O1_10:stop()

	
	
end

--Should be used as love.draw
function world_1_10:draw()
	love.graphics.draw(background)
	o_O1_1:draw(28, 20)
	o_O1_2:draw(98, 20)
	o_O1_3:draw(168, 20)
	o_O1_4:draw(238, 20)
	o_O1_5:draw(308, 20)
	o_O1_6:draw(28, 114)
	o_O1_7:draw(98, 114)
	o_O1_8:draw(168, 114)
	o_O1_9:draw(238, 114)
	o_O1_10:draw(308, 114)
	
	if level_1_score == "0" then
		score_ani_1:draw(8, 240)
	else
		score_ani_1:seek(tonumber(level_1_score))
		score_ani_1:draw(46, 63)
	end
	
	if level_2_score == "0" then
		score_ani_2:draw(8, 240)
	else
		score_ani_2:seek(tonumber(level_2_score))
		score_ani_2:draw(116, 63)
	end
	
	if level_3_score == "0" then
		score_ani_3:draw(8, 240)
	else
		score_ani_3:seek(tonumber(level_3_score))
		score_ani_3:draw(186, 63)
	end
	
	if level_4_score == "0" then
		score_ani_4:draw(8, 240)
	else
		score_ani_4:seek(tonumber(level_4_score))
		score_ani_4:draw(256, 63)
	end
	
	if level_5_score == "0" then
		score_ani_5:draw(8, 240)
	else
		score_ani_5:seek(tonumber(level_5_score))
		score_ani_5:draw(326, 63)
	end
	
	if level_6_score == "0" then
		score_ani_6:draw(8, 240)
	else
		score_ani_6:seek(tonumber(level_6_score))
		score_ani_6:draw(46, 157)
	end
	
	if level_7_score == "0" then
		score_ani_7:draw(8, 240)
	else
		score_ani_7:seek(tonumber(level_7_score))
		score_ani_7:draw(116, 157)
	end
	
	if level_8_score == "0" then
		score_ani_8:draw(8, 240)
	else
		score_ani_8:seek(tonumber(level_8_score))
		score_ani_8:draw(186, 157)
	end
	
	if level_9_score == "0" then
		score_ani_9:draw(8, 240)
	else
		score_ani_9:seek(tonumber(level_9_score))
		score_ani_9:draw(256, 157)
	end
	
	if level_10_score == "0" then
		score_ani_10:draw(8, 240)
	else
		score_ani_10:seek(tonumber(level_10_score))
		score_ani_10:draw(326, 157)
	end
end

--This and other auxiliary love callbacks availible http://vrld.github.com/hump/#gamestate.lua-callbackList
function world_1_10:keypressed(key)
	if key == "right" then
		if ready_1_10 == true then
			if pick_1_1 == true then
				pick_1_2 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_2:seek(1)
			elseif pick_1_2 == true then
				pick_1_3 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_3:seek(1)
			elseif pick_1_3 == true then
				pick_1_4 = true
				pick_1_3 = false
				o_O1_3:seek(2)
				o_O1_4:seek(1)
			elseif pick_1_4 == true then
				pick_1_5 = true
				pick_1_4 = false
				o_O1_4:seek(2)
				o_O1_5:seek(1)
			elseif pick_1_5 == true then
				pick_1_6 = true
				pick_1_5 = false
				o_O1_5:seek(2)
				o_O1_6:seek(1)
			elseif pick_1_6 == true then
				pick_1_7 = true
				pick_1_6 = false
				o_O1_6:seek(2)
				o_O1_7:seek(1)
			elseif pick_1_7 == true then
				pick_1_8 = true
				pick_1_7 = false
				o_O1_7:seek(2)
				o_O1_8:seek(1)
			elseif pick_1_8 == true then
				pick_1_9 = true
				pick_1_8 = false
				o_O1_8:seek(2)
				o_O1_9:seek(1)
			elseif pick_1_9 == true then
				pick_1_10 = true
				pick_1_9 = false
				o_O1_9:seek(2)
				o_O1_10:seek(1)
			elseif pick_1_10 == true then
				pick_1_1 = true
				pick_1_10 = false
				o_O1_10:seek(2)
				o_O1_1:seek(1)
			else
			end
		elseif ready_1_9 == true then
			if pick_1_1 == true then
				pick_1_2 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_2:seek(1)
			elseif pick_1_2 == true then
				pick_1_3 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_3:seek(1)
			elseif pick_1_3 == true then
				pick_1_4 = true
				pick_1_3 = false
				o_O1_3:seek(2)
				o_O1_4:seek(1)
			elseif pick_1_4 == true then
				pick_1_5 = true
				pick_1_4 = false
				o_O1_4:seek(2)
				o_O1_5:seek(1)
			elseif pick_1_5 == true then
				pick_1_6 = true
				pick_1_5 = false
				o_O1_5:seek(2)
				o_O1_6:seek(1)
			elseif pick_1_6 == true then
				pick_1_7 = true
				pick_1_6 = false
				o_O1_6:seek(2)
				o_O1_7:seek(1)
			elseif pick_1_7 == true then
				pick_1_8 = true
				pick_1_7 = false
				o_O1_7:seek(2)
				o_O1_8:seek(1)
			elseif pick_1_8 == true then
				pick_1_9 = true
				pick_1_8 = false
				o_O1_8:seek(2)
				o_O1_9:seek(1)
			elseif pick_1_9 == true then
				pick_1_1 = true
				pick_1_9 = false
				o_O1_9:seek(2)
				o_O1_1:seek(1)
			else
			end
		elseif ready_1_8 == true then
			if pick_1_1 == true then
				pick_1_2 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_2:seek(1)
			elseif pick_1_2 == true then
				pick_1_3 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_3:seek(1)
			elseif pick_1_3 == true then
				pick_1_4 = true
				pick_1_3 = false
				o_O1_3:seek(2)
				o_O1_4:seek(1)
			elseif pick_1_4 == true then
				pick_1_5 = true
				pick_1_4 = false
				o_O1_4:seek(2)
				o_O1_5:seek(1)
			elseif pick_1_5 == true then
				pick_1_6 = true
				pick_1_5 = false
				o_O1_5:seek(2)
				o_O1_6:seek(1)
			elseif pick_1_6 == true then
				pick_1_7 = true
				pick_1_6 = false
				o_O1_6:seek(2)
				o_O1_7:seek(1)
			elseif pick_1_7 == true then
				pick_1_8 = true
				pick_1_7 = false
				o_O1_7:seek(2)
				o_O1_8:seek(1)
			elseif pick_1_8 == true then
				pick_1_1 = true
				pick_1_8 = false
				o_O1_8:seek(2)
				o_O1_1:seek(1)
			else
			end
		elseif ready_1_7 == true then
			if pick_1_1 == true then
				pick_1_2 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_2:seek(1)
			elseif pick_1_2 == true then
				pick_1_3 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_3:seek(1)
			elseif pick_1_3 == true then
				pick_1_4 = true
				pick_1_3 = false
				o_O1_3:seek(2)
				o_O1_4:seek(1)
			elseif pick_1_4 == true then
				pick_1_5 = true
				pick_1_4 = false
				o_O1_4:seek(2)
				o_O1_5:seek(1)
			elseif pick_1_5 == true then
				pick_1_6 = true
				pick_1_5 = false
				o_O1_5:seek(2)
				o_O1_6:seek(1)
			elseif pick_1_6 == true then
				pick_1_7 = true
				pick_1_6 = false
				o_O1_6:seek(2)
				o_O1_7:seek(1)
			elseif pick_1_7 == true then
				pick_1_1 = true
				pick_1_7 = false
				o_O1_7:seek(2)
				o_O1_1:seek(1)
			else
			end
		elseif ready_1_6 == true then
			if pick_1_1 == true then
				pick_1_2 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_2:seek(1)
			elseif pick_1_2 == true then
				pick_1_3 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_3:seek(1)
			elseif pick_1_3 == true then
				pick_1_4 = true
				pick_1_3 = false
				o_O1_3:seek(2)
				o_O1_4:seek(1)
			elseif pick_1_4 == true then
				pick_1_5 = true
				pick_1_4 = false
				o_O1_4:seek(2)
				o_O1_5:seek(1)
			elseif pick_1_5 == true then
				pick_1_6 = true
				pick_1_5 = false
				o_O1_5:seek(2)
				o_O1_6:seek(1)
			elseif pick_1_6 == true then
				pick_1_1 = true
				pick_1_6 = false
				o_O1_6:seek(2)
				o_O1_1:seek(1)
			else
			end
		elseif ready_1_5 == true then
			if pick_1_1 == true then
				pick_1_2 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_2:seek(1)
			elseif pick_1_2 == true then
				pick_1_3 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_3:seek(1)
			elseif pick_1_3 == true then
				pick_1_4 = true
				pick_1_3 = false
				o_O1_3:seek(2)
				o_O1_4:seek(1)
			elseif pick_1_4 == true then
				pick_1_5 = true
				pick_1_4 = false
				o_O1_4:seek(2)
				o_O1_5:seek(1)
			elseif pick_1_5 == true then
				pick_1_1 = true
				pick_1_5 = false
				o_O1_5:seek(2)
				o_O1_1:seek(1)
			else
			end
		elseif ready_1_4 == true then
			if pick_1_1 == true then
				pick_1_2 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_2:seek(1)
			elseif pick_1_2 == true then
				pick_1_3 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_3:seek(1)
			elseif pick_1_3 == true then
				pick_1_4 = true
				pick_1_3 = false
				o_O1_3:seek(2)
				o_O1_4:seek(1)
			elseif pick_1_4 == true then
				pick_1_1 = true
				pick_1_4 = false
				o_O1_4:seek(2)
				o_O1_1:seek(1)
			else
			end
		elseif ready_1_3 == true then
			if pick_1_1 == true then
				pick_1_2 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_2:seek(1)
			elseif pick_1_2 == true then
				pick_1_3 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_3:seek(1)
			elseif pick_1_3 == true then
				pick_1_1 = true
				pick_1_3 = false
				o_O1_3:seek(2)
				o_O1_1:seek(1)
			else
			end
		elseif ready_1_2 == true then
			if pick_1_1 == true then
				pick_1_2 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_2:seek(1)
			elseif pick_1_2 == true then
				pick_1_1 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_1:seek(1)
			else
			end
		elseif ready_1_1 == true then
			--nothing
		else
		end
		
	elseif key == "left" then
		if ready_1_10 == true then
			if pick_1_1 == true then
				pick_1_10 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_10:seek(1)
			elseif pick_1_2 == true then
				pick_1_1 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_1:seek(1)
			elseif pick_1_3 == true then
				pick_1_2 = true
				pick_1_3 = false
				o_O1_3:seek(2)
				o_O1_2:seek(1)
			elseif pick_1_4 == true then
				pick_1_3 = true
				pick_1_4 = false
				o_O1_4:seek(2)
				o_O1_3:seek(1)
			elseif pick_1_5 == true then
				pick_1_4 = true
				pick_1_5 = false
				o_O1_5:seek(2)
				o_O1_4:seek(1)
			elseif pick_1_6 == true then
				pick_1_5 = true
				pick_1_6 = false
				o_O1_6:seek(2)
				o_O1_5:seek(1)
			elseif pick_1_7 == true then
				pick_1_6 = true
				pick_1_7 = false
				o_O1_7:seek(2)
				o_O1_6:seek(1)
			elseif pick_1_8 == true then
				pick_1_7 = true
				pick_1_8 = false
				o_O1_8:seek(2)
				o_O1_7:seek(1)
			elseif pick_1_9 == true then
				pick_1_8 = true
				pick_1_9 = false
				o_O1_9:seek(2)
				o_O1_8:seek(1)
			elseif pick_1_10 == true then
				pick_1_9 = true
				pick_1_10 = false
				o_O1_10:seek(2)
				o_O1_9:seek(1)
			else
			end
		elseif ready_1_9 == true then
			if pick_1_1 == true then
				pick_1_9 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_9:seek(1)
			elseif pick_1_2 == true then
				pick_1_1 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_1:seek(1)
			elseif pick_1_3 == true then
				pick_1_2 = true
				pick_1_3 = false
				o_O1_3:seek(2)
				o_O1_2:seek(1)
			elseif pick_1_4 == true then
				pick_1_3 = true
				pick_1_4 = false
				o_O1_4:seek(2)
				o_O1_3:seek(1)
			elseif pick_1_5 == true then
				pick_1_4 = true
				pick_1_5 = false
				o_O1_5:seek(2)
				o_O1_4:seek(1)
			elseif pick_1_6 == true then
				pick_1_5 = true
				pick_1_6 = false
				o_O1_6:seek(2)
				o_O1_5:seek(1)
			elseif pick_1_7 == true then
				pick_1_6 = true
				pick_1_7 = false
				o_O1_7:seek(2)
				o_O1_6:seek(1)
			elseif pick_1_8 == true then
				pick_1_7 = true
				pick_1_8 = false
				o_O1_8:seek(2)
				o_O1_7:seek(1)
			elseif pick_1_9 == true then
				pick_1_8 = true
				pick_1_9 = false
				o_O1_9:seek(2)
				o_O1_8:seek(1)
			else
			end
		elseif ready_1_8 == true then
			if pick_1_1 == true then
				pick_1_8 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_8:seek(1)
			elseif pick_1_2 == true then
				pick_1_1 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_1:seek(1)
			elseif pick_1_3 == true then
				pick_1_2 = true
				pick_1_3 = false
				o_O1_3:seek(2)
				o_O1_2:seek(1)
			elseif pick_1_4 == true then
				pick_1_3 = true
				pick_1_4 = false
				o_O1_4:seek(2)
				o_O1_3:seek(1)
			elseif pick_1_5 == true then
				pick_1_4 = true
				pick_1_5 = false
				o_O1_5:seek(2)
				o_O1_4:seek(1)
			elseif pick_1_6 == true then
				pick_1_5 = true
				pick_1_6 = false
				o_O1_6:seek(2)
				o_O1_5:seek(1)
			elseif pick_1_7 == true then
				pick_1_6 = true
				pick_1_7 = false
				o_O1_7:seek(2)
				o_O1_6:seek(1)
			elseif pick_1_8 == true then
				pick_1_7 = true
				pick_1_8 = false
				o_O1_8:seek(2)
				o_O1_7:seek(1)
			else
			end
		elseif ready_1_7 == true then
			if pick_1_1 == true then
				pick_1_7 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_7:seek(1)
			elseif pick_1_2 == true then
				pick_1_1 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_1:seek(1)
			elseif pick_1_3 == true then
				pick_1_2 = true
				pick_1_3 = false
				o_O1_3:seek(2)
				o_O1_2:seek(1)
			elseif pick_1_4 == true then
				pick_1_3 = true
				pick_1_4 = false
				o_O1_4:seek(2)
				o_O1_3:seek(1)
			elseif pick_1_5 == true then
				pick_1_4 = true
				pick_1_5 = false
				o_O1_5:seek(2)
				o_O1_4:seek(1)
			elseif pick_1_6 == true then
				pick_1_5 = true
				pick_1_6 = false
				o_O1_6:seek(2)
				o_O1_5:seek(1)
			elseif pick_1_7 == true then
				pick_1_6 = true
				pick_1_7 = false
				o_O1_7:seek(2)
				o_O1_6:seek(1)
			else
			end
		elseif ready_1_6 == true then
			if pick_1_1 == true then
				pick_1_6 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_6:seek(1)
			elseif pick_1_2 == true then
				pick_1_1 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_1:seek(1)
			elseif pick_1_3 == true then
				pick_1_2 = true
				pick_1_3 = false
				o_O1_3:seek(2)
				o_O1_2:seek(1)
			elseif pick_1_4 == true then
				pick_1_3 = true
				pick_1_4 = false
				o_O1_4:seek(2)
				o_O1_3:seek(1)
			elseif pick_1_5 == true then
				pick_1_4 = true
				pick_1_5 = false
				o_O1_5:seek(2)
				o_O1_4:seek(1)
			elseif pick_1_6 == true then
				pick_1_5 = true
				pick_1_6 = false
				o_O1_6:seek(2)
				o_O1_5:seek(1)
			else
			end
		elseif ready_1_5 == true then
			if pick_1_1 == true then
				pick_1_5 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_5:seek(1)
			elseif pick_1_2 == true then
				pick_1_1 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_1:seek(1)
			elseif pick_1_3 == true then
				pick_1_2 = true
				pick_1_3 = false
				o_O1_3:seek(2)
				o_O1_2:seek(1)
			elseif pick_1_4 == true then
				pick_1_3 = true
				pick_1_4 = false
				o_O1_4:seek(2)
				o_O1_3:seek(1)
			elseif pick_1_5 == true then
				pick_1_4 = true
				pick_1_5 = false
				o_O1_5:seek(2)
				o_O1_4:seek(1)
			else
			end
		elseif ready_1_4 == true then
			if pick_1_1 == true then
				pick_1_4 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_4:seek(1)
			elseif pick_1_2 == true then
				pick_1_1 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_1:seek(1)
			elseif pick_1_3 == true then
				pick_1_2 = true
				pick_1_3 = false
				o_O1_3:seek(2)
				o_O1_2:seek(1)
			elseif pick_1_4 == true then
				pick_1_3 = true
				pick_1_4 = false
				o_O1_4:seek(2)
				o_O1_3:seek(1)
			else
			end
		elseif ready_1_3 == true then
			if pick_1_1 == true then
				pick_1_3 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_3:seek(1)
			elseif pick_1_2 == true then
				pick_1_1 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_1:seek(1)
			elseif pick_1_3 == true then
				pick_1_2 = true
				pick_1_3 = false
				o_O1_3:seek(2)
				o_O1_2:seek(1)
			else
			end
		elseif ready_1_2 == true then
			if pick_1_1 == true then
				pick_1_2 = true
				pick_1_1 = false
				o_O1_1:seek(2)
				o_O1_2:seek(1)
			elseif pick_1_2 == true then
				pick_1_1 = true
				pick_1_2 = false
				o_O1_2:seek(2)
				o_O1_1:seek(1)
			else
			end
		elseif ready_1_1 == true then
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
		
		if pick_1_1 == true then
			puzzle_1 = true
		elseif pick_1_2 == true then
			puzzle_2 = true
		elseif pick_1_3 == true then
			puzzle_3 = true
		elseif pick_1_4 == true then
			puzzle_4 = true
		elseif pick_1_5 == true then
			puzzle_5 = true
		elseif pick_1_6 == true then
			puzzle_6 = true
		elseif pick_1_7 == true then
			puzzle_7 = true
		elseif pick_1_8 == true then
			puzzle_8 = true
		elseif pick_1_9 == true then
			puzzle_9 = true
		elseif pick_1_10 == true then
			puzzle_10 = true
		end
		Gamestate.switch(puzzle)

	
	elseif key == "escape" then
		Gamestate.switch(level_select_1)
	else
	end
end

--Called when leaving learnGamestate
function world_1_10:leave()
	pick_1_1 = true
	pick_1_2 = false
	pick_1_3 = false
	pick_1_4 = false
	pick_1_5 = false
	pick_1_6 = false
	pick_1_7 = false
	pick_1_8 = false
	pick_1_9 = false
	pick_1_10 = false
	
	ready_1_1 = true
	ready_1_2 = false
	ready_1_3 = false
	ready_1_4 = false
	ready_1_5 = false
	ready_1_6 = false
	ready_1_7 = false
	ready_1_8 = false
	ready_1_9 = false
	ready_1_10 = false

end
