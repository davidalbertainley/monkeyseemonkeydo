require "libraries/gamestate"

world_3_30 = Gamestate.new()

love.filesystem.setIdentity("monkey_see_monkey_do")

--more FUCKING toggling, this time for selection
local pick_3_21 = true
local pick_3_22 = false
local pick_3_23 = false
local pick_3_24 = false
local pick_3_25 = false
local pick_3_26 = false
local pick_3_27 = false
local pick_3_28 = false
local pick_3_29 = false
local pick_3_30 = false

--toggling to see if youve beaten the previous level
local ready_3_21 = true
local ready_3_22 = false
local ready_3_23 = false
local ready_3_24 = false
local ready_3_25 = false
local ready_3_26 = false
local ready_3_27 = false
local ready_3_28 = false
local ready_3_29 = false
local ready_3_30 = false

function check_da_scoresies_blue()


	if level_30_score ~= "0" then
		o_O3_21:seek(1)
		ready_3_21 = true
		
		o_O3_22:seek(2)
		ready_3_22 = true
		
		o_O3_23:seek(2)
		ready_3_23 = true
		
		o_O3_24:seek(2)
		ready_3_24 = true
		
		o_O3_25:seek(2)
		ready_3_25 = true
		
		o_O3_26:seek(2)
		ready_3_26 = true
		
		o_O3_27:seek(2)
		ready_3_27 = true
		
		o_O3_28:seek(2)
		ready_3_28 = true
		
		o_O3_29:seek(2)
		ready_3_29 = true
		
		o_O3_30:seek(2)
		ready_3_30 = true
		
		--MAKE WORLD 2 PLAYABLE
	
	elseif level_29_score ~= "0" then
		o_O3_21:seek(1)
		ready_3_21 = true
		
		o_O3_22:seek(2)
		ready_3_22 = true
		
		o_O3_23:seek(2)
		ready_3_23 = true
		
		o_O3_24:seek(2)
		ready_3_24 = true
		
		o_O3_25:seek(2)
		ready_3_25 = true
		
		o_O3_26:seek(2)
		ready_3_26 = true
		
		o_O3_27:seek(2)
		ready_3_27 = true
		
		o_O3_28:seek(2)
		ready_3_28 = true
		
		o_O3_29:seek(2)
		ready_3_29 = true
		
		o_O3_30:seek(2)
		ready_3_30 = true
	
	elseif level_28_score ~= "0" then
		o_O3_21:seek(2)
		ready_3_21 = true
		
		o_O3_22:seek(2)
		ready_3_22 = true
		
		o_O3_23:seek(2)
		ready_3_23 = true
		
		o_O3_24:seek(2)
		ready_3_24 = true
		
		o_O3_25:seek(2)
		ready_3_25 = true
		
		o_O3_26:seek(2)
		ready_3_26 = true
		
		o_O3_27:seek(2)
		ready_3_27 = true
		
		o_O3_28:seek(2)
		ready_3_28 = true
		
		o_O3_29:seek(2)
		ready_3_29 = true
		
		o_O3_30:seek(3)
		ready_3_30 = false
	
	elseif level_27_score ~= "0" then
		o_O3_21:seek(1)
		ready_3_21 = true
		
		o_O3_22:seek(2)
		ready_3_22 = true
		
		o_O3_23:seek(2)
		ready_3_23 = true
		
		o_O3_24:seek(2)
		ready_3_24 = true
		
		o_O3_25:seek(2)
		ready_3_25 = true
		
		o_O3_26:seek(2)
		ready_3_26 = true
		
		o_O3_27:seek(2)
		ready_3_27 = true
		
		o_O3_28:seek(2)
		ready_3_28 = true
		
		o_O3_29:seek(3)
		ready_3_29 = false
		
		o_O3_30:seek(3)
		ready_3_30 = false
	
	elseif level_26_score ~= "0" then
		o_O3_21:seek(1)
		ready_3_21 = true
		
		o_O3_22:seek(2)
		ready_3_22 = true
		
		o_O3_23:seek(2)
		ready_3_23 = true
		
		o_O3_24:seek(2)
		ready_3_24 = true
		
		o_O3_25:seek(2)
		ready_3_25 = true
		
		o_O3_26:seek(2)
		ready_3_26 = true
		
		o_O3_27:seek(2)
		ready_3_27 = true
		
		o_O3_28:seek(3)
		ready_3_28 = false
		
		o_O3_29:seek(3)
		ready_3_29 = false
		
		o_O3_30:seek(3)
		ready_3_30 = false
	
	elseif level_25_score ~= "0" then
		o_O3_21:seek(1)
		ready_3_21 = true
		
		o_O3_22:seek(2)
		ready_3_22 = true
		
		o_O3_23:seek(2)
		ready_3_23 = true
		
		o_O3_24:seek(2)
		ready_3_24 = true
		
		o_O3_25:seek(2)
		ready_3_25 = true
		
		o_O3_26:seek(2)
		ready_3_26 = true
		
		o_O3_27:seek(3)
		ready_3_27 = false
		
		o_O3_28:seek(3)
		ready_3_28 = false
		
		o_O3_29:seek(3)
		ready_3_29 = false
		
		o_O3_30:seek(3)
		ready_3_30 = false
	
	elseif level_24_score ~= "0" then
		o_O3_21:seek(1)
		ready_3_21 = true
		
		o_O3_22:seek(2)
		ready_3_22 = true
		
		o_O3_23:seek(2)
		ready_3_23 = true
		
		o_O3_24:seek(2)
		ready_3_24 = true
		
		o_O3_25:seek(2)
		ready_3_25 = true
		
		o_O3_26:seek(3)
		ready_3_26 = false
		
		o_O3_27:seek(3)
		ready_3_27 = false
		
		o_O3_28:seek(3)
		ready_3_28 = false
		
		o_O3_29:seek(3)
		ready_3_29 = false
		
		o_O3_30:seek(3)
		ready_3_30 = false
	
	elseif level_23_score ~= "0" then
		o_O3_21:seek(1)
		ready_3_21 = true
		
		o_O3_22:seek(2)
		ready_3_22 = true
		
		o_O3_23:seek(2)
		ready_3_23 = true
		
		o_O3_24:seek(2)
		ready_3_24 = true
		
		o_O3_25:seek(3)
		ready_3_25 = false
		
		o_O3_26:seek(3)
		ready_3_26 = false
		
		o_O3_27:seek(3)
		ready_3_27 = false
		
		o_O3_28:seek(3)
		ready_3_28 = false
		
		o_O3_29:seek(3)
		ready_3_29 = false
		
		o_O3_30:seek(3)
		ready_3_30 = false
	
	elseif level_22_score ~= "0" then
		o_O3_21:seek(1)
		ready_3_21 = true
		
		o_O3_22:seek(2)
		ready_3_22 = true
		
		o_O3_23:seek(2)
		ready_3_23 = true
		
		o_O3_24:seek(3)
		ready_3_24 = false
		
		o_O3_25:seek(3)
		ready_3_25 = false
		
		o_O3_26:seek(3)
		ready_3_26 = false
		
		o_O3_27:seek(3)
		ready_3_27 = false
		
		o_O3_28:seek(3)
		ready_3_28 = false
		
		o_O3_29:seek(3)
		ready_3_29 = false
		
		o_O3_30:seek(3)
		ready_3_30 = false
	
	elseif level_21_score ~= "0" then
		
		o_O3_21:seek(1)
		ready_3_21 = true
		
		o_O3_22:seek(2)
		ready_3_22 = true
		
		o_O3_23:seek(3)
		ready_3_23 = false
		
		o_O3_24:seek(3)
		ready_3_24 = false
		
		o_O3_25:seek(3)
		ready_3_25 = false
		
		o_O3_26:seek(3)
		ready_3_26 = false
		
		o_O3_27:seek(3)
		ready_3_27 = false
		
		o_O3_28:seek(3)
		ready_3_28 = false
		
		o_O3_29:seek(3)
		ready_3_29 = false
		
		o_O3_30:seek(3)
		ready_3_30 = false
	
	elseif level_21_score == "0" then
		
		o_O3_21:seek(1)
		ready_3_21 = true
		
		o_O3_22:seek(3)
		ready_3_22 = false
		
		o_O3_23:seek(3)
		ready_3_23 = false
		
		o_O3_24:seek(3)
		ready_3_24 = false
		
		o_O3_25:seek(3)
		ready_3_25 = false
		
		o_O3_26:seek(3)
		ready_3_26 = false
		
		o_O3_27:seek(3)
		ready_3_27 = false
		
		o_O3_28:seek(3)
		ready_3_28 = false
		
		o_O3_29:seek(3)
		ready_3_29 = false
		
		o_O3_30:seek(3)
		ready_3_30 = false
	end
end

--you are entering, basically, the love.load() of this gamestate
function world_3_30:enter(previous)
	level_21_score = love.filesystem.read("puzzle_21")
	level_22_score = love.filesystem.read("puzzle_22")
	level_23_score = love.filesystem.read("puzzle_23")
	level_24_score = love.filesystem.read("puzzle_24")
	level_25_score = love.filesystem.read("puzzle_25")
	level_26_score = love.filesystem.read("puzzle_26")
	level_27_score = love.filesystem.read("puzzle_27")
	level_28_score = love.filesystem.read("puzzle_28")
	level_29_score = love.filesystem.read("puzzle_29")
	level_30_score = love.filesystem.read("puzzle_30")
	check_da_scoresies_blue()
end

--Should be used as love.update
function world_3_30:update(dt)
	o_O3_21:update(dt)
	o_O3_22:update(dt)
	o_O3_23:update(dt)
	o_O3_24:update(dt)
	o_O3_26:update(dt)
	o_O3_25:update(dt)
	o_O3_27:update(dt)
	o_O3_28:update(dt)
	o_O3_29:update(dt)
	o_O3_30:update(dt)
	
	o_O3_21:stop()
	o_O3_22:stop()
	o_O3_23:stop()
	o_O3_24:stop()
	o_O3_25:stop()
	o_O3_26:stop()
	o_O3_27:stop()
	o_O3_28:stop()
	o_O3_29:stop()
	o_O3_30:stop()
end

--Should be used as love.draw
function world_3_30:draw()
	love.graphics.draw(background)
	o_O3_21:draw(28, 20)
	o_O3_22:draw(98, 20)
	o_O3_23:draw(168, 20)
	o_O3_24:draw(238, 20)
	o_O3_25:draw(308, 20)
	o_O3_26:draw(28, 114)
	o_O3_27:draw(98, 114)
	o_O3_28:draw(168, 114)
	o_O3_29:draw(238, 114)
	o_O3_30:draw(308, 114)
	
	if level_21_score == "0" then
		score_ani_21:draw(8, 240)
	else
		score_ani_21:seek(tonumber(level_21_score))
		score_ani_21:draw(46, 63)
	end
	
	if level_22_score == "0" then
		score_ani_22:draw(8, 240)
	else
		score_ani_22:seek(tonumber(level_22_score))
		score_ani_22:draw(116, 63)
	end
	
	if level_23_score == "0" then
		score_ani_23:draw(8, 240)
	else
		score_ani_23:seek(tonumber(level_23_score))
		score_ani_23:draw(186, 63)
	end
	
	if level_24_score == "0" then
		score_ani_24:draw(8, 240)
	else
		score_ani_24:seek(tonumber(level_24_score))
		score_ani_24:draw(256, 63)
	end
	
	if level_25_score == "0" then
		score_ani_25:draw(8, 240)
	else
		score_ani_25:seek(tonumber(level_25_score))
		score_ani_25:draw(326, 63)
	end
	
	if level_26_score == "0" then
		score_ani_26:draw(8, 240)
	else
		score_ani_26:seek(tonumber(level_26_score))
		score_ani_26:draw(46, 157)
	end
	
	if level_27_score == "0" then
		score_ani_27:draw(8, 240)
	else
		score_ani_27:seek(tonumber(level_27_score))
		score_ani_27:draw(116, 157)
	end
	
	if level_28_score == "0" then
		score_ani_28:draw(8, 240)
	else
		score_ani_28:seek(tonumber(level_28_score))
		score_ani_28:draw(186, 157)
	end
	
	if level_29_score == "0" then
		score_ani_29:draw(8, 240)
	else
		score_ani_29:seek(tonumber(level_29_score))
		score_ani_29:draw(256, 157)
	end
	
	if level_30_score == "0" then
		score_ani_30:draw(8, 240)
	else
		score_ani_30:seek(tonumber(level_30_score))
		score_ani_30:draw(326, 157)
	end
end

--This and other auxiliary love callbacks availible http://vrld.github.com/hump/#gamestate.lua-callbackList
function world_3_30:keypressed(key)
	if key == "right" then
		if ready_3_30 == true then
			if pick_3_21 == true then
				pick_3_22 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_22:seek(1)
			elseif pick_3_22 == true then
				pick_3_23 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_23:seek(1)
			elseif pick_3_23 == true then
				pick_3_24 = true
				pick_3_23 = false
				o_O3_23:seek(2)
				o_O3_24:seek(1)
			elseif pick_3_24 == true then
				pick_3_25 = true
				pick_3_24 = false
				o_O3_24:seek(2)
				o_O3_25:seek(1)
			elseif pick_3_25 == true then
				pick_3_26 = true
				pick_3_25 = false
				o_O3_25:seek(2)
				o_O3_26:seek(1)
			elseif pick_3_26 == true then
				pick_3_27 = true
				pick_3_26 = false
				o_O3_26:seek(2)
				o_O3_27:seek(1)
			elseif pick_3_27 == true then
				pick_3_28 = true
				pick_3_27 = false
				o_O3_27:seek(2)
				o_O3_28:seek(1)
			elseif pick_3_28 == true then
				pick_3_29 = true
				pick_3_28 = false
				o_O3_28:seek(2)
				o_O3_29:seek(1)
			elseif pick_3_29 == true then
				pick_3_30 = true
				pick_3_29 = false
				o_O3_29:seek(2)
				o_O3_30:seek(1)
			elseif pick_3_30 == true then
				pick_3_21 = true
				pick_3_30 = false
				o_O3_30:seek(2)
				o_O3_21:seek(1)
			else
			end
		elseif ready_3_29 == true then
			if pick_3_21 == true then
				pick_3_22 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_22:seek(1)
			elseif pick_3_22 == true then
				pick_3_23 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_23:seek(1)
			elseif pick_3_23 == true then
				pick_3_24 = true
				pick_3_23 = false
				o_O3_23:seek(2)
				o_O3_24:seek(1)
			elseif pick_3_24 == true then
				pick_3_25 = true
				pick_3_24 = false
				o_O3_24:seek(2)
				o_O3_25:seek(1)
			elseif pick_3_25 == true then
				pick_3_26 = true
				pick_3_25 = false
				o_O3_25:seek(2)
				o_O3_26:seek(1)
			elseif pick_3_26 == true then
				pick_3_27 = true
				pick_3_26 = false
				o_O3_26:seek(2)
				o_O3_27:seek(1)
			elseif pick_3_27 == true then
				pick_3_28 = true
				pick_3_27 = false
				o_O3_27:seek(2)
				o_O3_28:seek(1)
			elseif pick_3_28 == true then
				pick_3_29 = true
				pick_3_28 = false
				o_O3_28:seek(2)
				o_O3_29:seek(1)
			elseif pick_3_29 == true then
				pick_3_21 = true
				pick_3_29 = false
				o_O3_29:seek(2)
				o_O3_21:seek(1)
			else
			end
		elseif ready_3_28 == true then
			if pick_3_21 == true then
				pick_3_22 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_22:seek(1)
			elseif pick_3_22 == true then
				pick_3_23 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_23:seek(1)
			elseif pick_3_23 == true then
				pick_3_24 = true
				pick_3_23 = false
				o_O3_23:seek(2)
				o_O3_24:seek(1)
			elseif pick_3_24 == true then
				pick_3_25 = true
				pick_3_24 = false
				o_O3_24:seek(2)
				o_O3_25:seek(1)
			elseif pick_3_25 == true then
				pick_3_26 = true
				pick_3_25 = false
				o_O3_25:seek(2)
				o_O3_26:seek(1)
			elseif pick_3_26 == true then
				pick_3_27 = true
				pick_3_26 = false
				o_O3_26:seek(2)
				o_O3_27:seek(1)
			elseif pick_3_27 == true then
				pick_3_28 = true
				pick_3_27 = false
				o_O3_27:seek(2)
				o_O3_28:seek(1)
			elseif pick_3_28 == true then
				pick_3_21 = true
				pick_3_28 = false
				o_O3_28:seek(2)
				o_O3_21:seek(1)
			else
			end
		elseif ready_3_27 == true then
			if pick_3_21 == true then
				pick_3_22 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_22:seek(1)
			elseif pick_3_22 == true then
				pick_3_23 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_23:seek(1)
			elseif pick_3_23 == true then
				pick_3_24 = true
				pick_3_23 = false
				o_O3_23:seek(2)
				o_O3_24:seek(1)
			elseif pick_3_24 == true then
				pick_3_25 = true
				pick_3_24 = false
				o_O3_24:seek(2)
				o_O3_25:seek(1)
			elseif pick_3_25 == true then
				pick_3_26 = true
				pick_3_25 = false
				o_O3_25:seek(2)
				o_O3_26:seek(1)
			elseif pick_3_26 == true then
				pick_3_27 = true
				pick_3_26 = false
				o_O3_26:seek(2)
				o_O3_27:seek(1)
			elseif pick_3_27 == true then
				pick_3_21 = true
				pick_3_27 = false
				o_O3_27:seek(2)
				o_O3_21:seek(1)
			else
			end
		elseif ready_3_26 == true then
			if pick_3_21 == true then
				pick_3_22 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_22:seek(1)
			elseif pick_3_22 == true then
				pick_3_23 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_23:seek(1)
			elseif pick_3_23 == true then
				pick_3_24 = true
				pick_3_23 = false
				o_O3_23:seek(2)
				o_O3_24:seek(1)
			elseif pick_3_24 == true then
				pick_3_25 = true
				pick_3_24 = false
				o_O3_24:seek(2)
				o_O3_25:seek(1)
			elseif pick_3_25 == true then
				pick_3_26 = true
				pick_3_25 = false
				o_O3_25:seek(2)
				o_O3_26:seek(1)
			elseif pick_3_26 == true then
				pick_3_21 = true
				pick_3_26 = false
				o_O3_26:seek(2)
				o_O3_21:seek(1)
			else
			end
		elseif ready_3_25 == true then
			if pick_3_21 == true then
				pick_3_22 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_22:seek(1)
			elseif pick_3_22 == true then
				pick_3_23 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_23:seek(1)
			elseif pick_3_23 == true then
				pick_3_24 = true
				pick_3_23 = false
				o_O3_23:seek(2)
				o_O3_24:seek(1)
			elseif pick_3_24 == true then
				pick_3_25 = true
				pick_3_24 = false
				o_O3_24:seek(2)
				o_O3_25:seek(1)
			elseif pick_3_25 == true then
				pick_3_21 = true
				pick_3_25 = false
				o_O3_25:seek(2)
				o_O3_21:seek(1)
			else
			end
		elseif ready_3_24 == true then
			if pick_3_21 == true then
				pick_3_22 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_22:seek(1)
			elseif pick_3_22 == true then
				pick_3_23 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_23:seek(1)
			elseif pick_3_23 == true then
				pick_3_24 = true
				pick_3_23 = false
				o_O3_23:seek(2)
				o_O3_24:seek(1)
			elseif pick_3_24 == true then
				pick_3_21 = true
				pick_3_24 = false
				o_O3_24:seek(2)
				o_O3_21:seek(1)
			else
			end
		elseif ready_3_23 == true then
			if pick_3_21 == true then
				pick_3_22 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_22:seek(1)
			elseif pick_3_22 == true then
				pick_3_23 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_23:seek(1)
			elseif pick_3_23 == true then
				pick_3_21 = true
				pick_3_23 = false
				o_O3_23:seek(2)
				o_O3_21:seek(1)
			else
			end
		elseif ready_3_22 == true then
			if pick_3_21 == true then
				pick_3_22 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_22:seek(1)
			elseif pick_3_22 == true then
				pick_3_21 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_21:seek(1)
			else
			end
		elseif ready_3_21 == true then
			
		end
	elseif key == "left" then
		if ready_3_30 == true then
			if pick_3_21 == true then
				pick_3_30 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_30:seek(1)
			elseif pick_3_22 == true then
				pick_3_21 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_21:seek(1)
			elseif pick_3_23 == true then
				pick_3_22 = true
				pick_3_23 = false
				o_O3_23:seek(2)
				o_O3_22:seek(1)
			elseif pick_3_24 == true then
				pick_3_23 = true
				pick_3_24 = false
				o_O3_24:seek(2)
				o_O3_23:seek(1)
			elseif pick_3_25 == true then
				pick_3_24 = true
				pick_3_25 = false
				o_O3_25:seek(2)
				o_O3_24:seek(1)
			elseif pick_3_26 == true then
				pick_3_25 = true
				pick_3_26 = false
				o_O3_26:seek(2)
				o_O3_25:seek(1)
			elseif pick_3_27 == true then
				pick_3_26 = true
				pick_3_27 = false
				o_O3_27:seek(2)
				o_O3_26:seek(1)
			elseif pick_3_28 == true then
				pick_3_27 = true
				pick_3_28 = false
				o_O3_28:seek(2)
				o_O3_27:seek(1)
			elseif pick_3_29 == true then
				pick_3_28 = true
				pick_3_29 = false
				o_O3_29:seek(2)
				o_O3_28:seek(1)
			elseif pick_3_30 == true then
				pick_3_29 = true
				pick_3_30 = false
				o_O3_30:seek(2)
				o_O3_29:seek(1)
			else
			end
		elseif ready_3_29 == true then
			if pick_3_21 == true then
				pick_3_29 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_29:seek(1)
			elseif pick_3_22 == true then
				pick_3_21 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_21:seek(1)
			elseif pick_3_23 == true then
				pick_3_22 = true
				pick_3_23 = false
				o_O3_23:seek(2)
				o_O3_22:seek(1)
			elseif pick_3_24 == true then
				pick_3_23 = true
				pick_3_24 = false
				o_O3_24:seek(2)
				o_O3_23:seek(1)
			elseif pick_3_25 == true then
				pick_3_24 = true
				pick_3_25 = false
				o_O3_25:seek(2)
				o_O3_24:seek(1)
			elseif pick_3_26 == true then
				pick_3_25 = true
				pick_3_26 = false
				o_O3_26:seek(2)
				o_O3_25:seek(1)
			elseif pick_3_27 == true then
				pick_3_26 = true
				pick_3_27 = false
				o_O3_27:seek(2)
				o_O3_26:seek(1)
			elseif pick_3_28 == true then
				pick_3_27 = true
				pick_3_28 = false
				o_O3_28:seek(2)
				o_O3_27:seek(1)
			elseif pick_3_29 == true then
				pick_3_28 = true
				pick_3_29 = false
				o_O3_29:seek(2)
				o_O3_28:seek(1)
			else
			end
		elseif ready_3_28 == true then
			if pick_3_21 == true then
				pick_3_28 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_28:seek(1)
			elseif pick_3_22 == true then
				pick_3_21 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_21:seek(1)
			elseif pick_3_23 == true then
				pick_3_22 = true
				pick_3_23 = false
				o_O3_23:seek(2)
				o_O3_22:seek(1)
			elseif pick_3_24 == true then
				pick_3_23 = true
				pick_3_24 = false
				o_O3_24:seek(2)
				o_O3_23:seek(1)
			elseif pick_3_25 == true then
				pick_3_24 = true
				pick_3_25 = false
				o_O3_25:seek(2)
				o_O3_24:seek(1)
			elseif pick_3_26 == true then
				pick_3_25 = true
				pick_3_26 = false
				o_O3_26:seek(2)
				o_O3_25:seek(1)
			elseif pick_3_27 == true then
				pick_3_26 = true
				pick_3_27 = false
				o_O3_27:seek(2)
				o_O3_26:seek(1)
			elseif pick_3_28 == true then
				pick_3_27 = true
				pick_3_28 = false
				o_O3_28:seek(2)
				o_O3_27:seek(1)
			else
			end
		elseif ready_3_27 == true then
			if pick_3_21 == true then
				pick_3_27 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_27:seek(1)
			elseif pick_3_22 == true then
				pick_3_21 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_21:seek(1)
			elseif pick_3_23 == true then
				pick_3_22 = true
				pick_3_23 = false
				o_O3_23:seek(2)
				o_O3_22:seek(1)
			elseif pick_3_24 == true then
				pick_3_23 = true
				pick_3_24 = false
				o_O3_24:seek(2)
				o_O3_23:seek(1)
			elseif pick_3_25 == true then
				pick_3_24 = true
				pick_3_25 = false
				o_O3_25:seek(2)
				o_O3_24:seek(1)
			elseif pick_3_26 == true then
				pick_3_25 = true
				pick_3_26 = false
				o_O3_26:seek(2)
				o_O3_25:seek(1)
			elseif pick_3_27 == true then
				pick_3_26 = true
				pick_3_27 = false
				o_O3_27:seek(2)
				o_O3_26:seek(1)
			else
			end
		elseif ready_3_26 == true then
			if pick_3_21 == true then
				pick_3_26 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_26:seek(1)
			elseif pick_3_22 == true then
				pick_3_21 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_21:seek(1)
			elseif pick_3_23 == true then
				pick_3_22 = true
				pick_3_23 = false
				o_O3_23:seek(2)
				o_O3_22:seek(1)
			elseif pick_3_24 == true then
				pick_3_23 = true
				pick_3_24 = false
				o_O3_24:seek(2)
				o_O3_23:seek(1)
			elseif pick_3_25 == true then
				pick_3_24 = true
				pick_3_25 = false
				o_O3_25:seek(2)
				o_O3_24:seek(1)
			elseif pick_3_26 == true then
				pick_3_25 = true
				pick_3_26 = false
				o_O3_26:seek(2)
				o_O3_25:seek(1)
			else
			end
		elseif ready_3_25 == true then
			if pick_3_21 == true then
				pick_3_25 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_25:seek(1)
			elseif pick_3_22 == true then
				pick_3_21 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_21:seek(1)
			elseif pick_3_23 == true then
				pick_3_22 = true
				pick_3_23 = false
				o_O3_23:seek(2)
				o_O3_22:seek(1)
			elseif pick_3_24 == true then
				pick_3_23 = true
				pick_3_24 = false
				o_O3_24:seek(2)
				o_O3_23:seek(1)
			elseif pick_3_25 == true then
				pick_3_24 = true
				pick_3_25 = false
				o_O3_25:seek(2)
				o_O3_24:seek(1)
			else
			end
		elseif ready_3_24 == true then
			if pick_3_21 == true then
				pick_3_24 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_24:seek(1)
			elseif pick_3_22 == true then
				pick_3_21 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_21:seek(1)
			elseif pick_3_23 == true then
				pick_3_22 = true
				pick_3_23 = false
				o_O3_23:seek(2)
				o_O3_22:seek(1)
			elseif pick_3_24 == true then
				pick_3_23 = true
				pick_3_24 = false
				o_O3_24:seek(2)
				o_O3_23:seek(1)
			else
			end
		elseif ready_3_23 == true then
			if pick_3_21 == true then
				pick_3_23 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_23:seek(1)
			elseif pick_3_22 == true then
				pick_3_21 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_21:seek(1)
			elseif pick_3_23 == true then
				pick_3_22 = true
				pick_3_23 = false
				o_O3_23:seek(2)
				o_O3_22:seek(1)
			else
			end
		elseif ready_3_22 == true then
			if pick_3_21 == true then
				pick_3_22 = true
				pick_3_21 = false
				o_O3_21:seek(2)
				o_O3_22:seek(1)
			elseif pick_3_22 == true then
				pick_3_21 = true
				pick_3_22 = false
				o_O3_22:seek(2)
				o_O3_21:seek(1)
			else
			end
		elseif ready_3_21 == true then
			
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
		
		if pick_3_21 == true then
			puzzle_21 = true
		elseif pick_3_22 == true then
			puzzle_22 = true
		elseif pick_3_23 == true then
			puzzle_23 = true
		elseif pick_3_24 == true then
			puzzle_24 = true
		elseif pick_3_25 == true then
			puzzle_25 = true
		elseif pick_3_26 == true then
			puzzle_26 = true
		elseif pick_3_27 == true then
			puzzle_27 = true
		elseif pick_3_28 == true then
			puzzle_28 = true
		elseif pick_3_29 == true then
			puzzle_29 = true
		elseif pick_3_30 == true then
			puzzle_30 = true
		end
		Gamestate.switch(puzzle)
		
	elseif key == "escape" then
		Gamestate.switch(level_select_1)
	else
	end
end

--Called when leaving learnGamestate
function world_3_30:leave()
	pick_3_21 = true
	pick_3_22 = false
	pick_3_23 = false
	pick_3_24 = false
	pick_3_25 = false
	pick_3_26 = false
	pick_3_27 = false
	pick_3_28 = false
	pick_3_29 = false
	pick_3_30 = false
	
	ready_3_21 = true
	ready_3_22 = false
	ready_3_23 = false
	ready_3_24 = false
	ready_3_25 = false
	ready_3_26 = false
	ready_3_27 = false
	ready_3_28 = false
	ready_3_29 = false
	ready_3_30 = false
end
