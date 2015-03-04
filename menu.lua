require "libraries/gamestate"
require "game"
require "level_select"

--creating the gamestate
menu_gamestate = Gamestate.new()

local button_1_toggle = true
local button_2_toggle = false
local button_3_toggle = false



--you are entering, basically, the love.load() of this gamestate
function menu_gamestate:enter(previous)
	
end

--Should be used as love.update
function menu_gamestate:update(dt)
	
	start_button_ani:update(dt)
	levels_button_ani:update(dt)
	quit_button_ani:update(dt)
	levels_button_ani:stop()
	start_button_ani:stop()
	quit_button_ani:stop()
	
	
	if button_1_toggle == true then 
		start_button_ani:seek(2)
		levels_button_ani:seek(1)
		quit_button_ani:seek(1)
	elseif button_2_toggle == true then
		start_button_ani:seek(1)
		levels_button_ani:seek(2)
		quit_button_ani:seek(1)
	elseif button_3_toggle == true then
		start_button_ani:seek(1)
		levels_button_ani:seek(1)
		quit_button_ani:seek(2)
	end
	
end

--Should be used as love.draw
function menu_gamestate:draw()
	love.graphics.draw(menu_background)
	start_button_ani:draw(7, 185)
	levels_button_ani:draw(140, 185)
	quit_button_ani:draw(273, 185)
end

--This and other auxiliary love callbacks availible http://vrld.github.com/hump/#gamestate.lua-callbackList
function menu_gamestate:keypressed(key)
	keyboard_used = true
	if key == "right" then
		if button_1_toggle == true then
			button_2_toggle = true
			button_1_toggle = false
		elseif button_2_toggle == true then
			button_3_toggle = true
			button_2_toggle = false
		elseif button_3_toggle == true then
			button_1_toggle = true
			button_3_toggle = false
		else
		end
	elseif key == "left" then
		if button_1_toggle == true then
			button_3_toggle = true
			button_1_toggle = false
		elseif button_2_toggle == true then
			button_1_toggle = true
			button_2_toggle = false
		elseif button_3_toggle == true then
			button_2_toggle = true
			button_3_toggle = false
		else
		end
	elseif key == "return" then
		if button_1_toggle == true then
			puzzle_1 = true
			Gamestate.switch(puzzle)
		elseif button_2_toggle == true then
			Gamestate.switch(level_select_1)
		elseif button_3_toggle == true then
			love.event.quit()
		else
		end
	else
	end
end




--Called when leaving learnGamestate
function menu_gamestate:leave()
end
