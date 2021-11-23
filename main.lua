#!/usr/bin/env lua

local cw = 380
local ch = 640

local dave = {}
local hal = {}

dave.color = { 220/255, 220/255, 220/255 }

hal.color = { 52/255, 52/255, 133/255 }

function love.load()
  love.window.setTitle("d1ce")
  love.window.setMode(cw, ch, { resizable=false, vsync=false})
  love.graphics.setBackgroundColor(25/255, 125/255, 75/255)

  dave.img = love.graphics.newImage('img/Die1.png')
end

function love.draw()
  love.graphics.draw(dave.img, cw/2, ch/2,0,0.04,0.04,0)
end

function love.mousereleased()
  dave.dice = math.random(1,6)
  dave.img = love.graphics.newImage('img/Die' .. dave.dice .. '.png')
end
