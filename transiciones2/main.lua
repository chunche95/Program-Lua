-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Llamamos la libreria
local physics = require("physics")
-- Iniciamos la libreria
physics.start( )
-- Buscamos el centro de la pantalla del dispositivo
local centerX = display.contentCenterX
local centerY = display.contentCenterY
-- Guardamos el ancho y alto de la pantalla
local _W = display.contentWidth
local _H = display.contentHeight
-- Ocultamos la barra de estado
display.setStatusBar( display.HiddenStatusBar )

local square = display.newRect(0,0,100,100)
square:setFillColor(1,0,1)
square.x = _W/2
square.y = _H/2

local square2 = display.newRect(0,0,50,50)
square:setFillColor(1,0,1)
square2.x = _W/2
square2.y = _H/2
-- Movimineto de la posicion inicial al destino X=250 Y=400

transition.to(square, {time = 1500, x= 250, y = 400})

transition.from(square2,{time = 1500, x =275, y = 0})


-- Your code here