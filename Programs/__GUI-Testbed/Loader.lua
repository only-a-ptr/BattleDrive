--[[
________________________________________________________________________________

 GUI showcase loader
________________________________________________________________________________

--]]

local Loader = {};
Loader.__index = Loader;

function Loader:load(core, gameDir)
	print(" ==== GUI testbed: Loading ==== ");
	local config = core:getConfig();
	local love_graphics = love.graphics;
	love_graphics.clear();
	love_graphics.setColor(255,255,255,255);
	love_graphics.print("LOADING 'Game stub' ...",50,50);
	love_graphics.present();
	local love_timer_getTime = love.timer.getTime;
	local startTime = love_timer_getTime();
	local constructor = require(gameDir.."/Application.lua");
	print("Scripts loaded in: "..love_timer_getTime()-startTime.." sec");
	local app = constructor(core,gameDir);
	print(" ==== GUI testbed: Start ==== ");
	return app;
end

return Loader;

