-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

--[[ 
     
     CARGO IMAGEN DE FONDO DE PANTALLA A LA QUE ESCRIBIRE TEXTO ENCIMA
     | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | 
     V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V 
]]

local halfW = display.viewableContentWidth / 2
local halfH = display.viewableContentHeight / 2

-- Ocultamos status bar (barra de estado)
 display.setStatusBar(display.HiddenStatusBar)

--Cargamos imagen
local background = display.newImage("mario.jpg", halfW,halfH)

-- Mostramos texto
local saludar = display.newText("Hola Mundo!", 100, 465, "Tahoma", 25)
saludar:setTextColor("black")


-- Your code here