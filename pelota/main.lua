-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Physics. Elementos estáticos y dinámicos.

-- Creacion de una pelota c¡que cae desde arriba y rebota
local physics = require "physics" -- Llamada de la libreria 'fisica'

-- Buscamos el centro de la pantalla del dispositivo
local centerX = display.contentCenterX
local centerY = display.contentCenterY

-- Buscamos el alto y ancho de la pantalla
local alto = display.contentHeight
local ancho = display.contentWidth

physics.start() -- Inicio de la libreria 
local pelota = display.newCircle(centerX,-85,20) -- Localizacion inicial de la pelota 
physics.addBody ( pelota, "dynamic", { density=.8, friction=0.7, bounce= 0.8}) -- parametros de la pelota al caer

-- Creacion de un suelo para que la pelota salte, sino seguira recto.

local suelo = display.newRect(centerX,alto, ancho, 12 )
physics.addBody ( suelo, "static", { density=.9, friction=1, bounce= 0.11})

-- Your code here 