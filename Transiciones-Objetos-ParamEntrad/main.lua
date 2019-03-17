-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
physica = require("physics")
-- Iniciamos la libreria
physics.start( )
-- Localizacion del centro de la pantalla del dispositivo
local centerX = display.contentCenterX
local centerY = display.contentCenterY
-- Fondo de pantalla

local bkg=display.newImage( "fondo.jpg", centerX, centerY ) -- Asignamos la imagen de fondo
bkg:scale(display.contentWidth/bkg.contentWidth, display.contentHeight/bkg.contentHeight) -- Ajustar la imagen al tamaño de la pantalla
bkg.x = display.contentWidth/2
bkg.y = display.contentHeight/2
-- Creacion de una animacion por pantalla, en este caso no hace uso de la libreria 'physica'.
for i=1, 4 do
    local personaje =  display.newImage("superGeek.png", centerX - 150 + 60 * i, display.contentHeight-400)
    print ("x= " .. personaje.x ..  " e y= " ..  personaje.y)
    physics.addBody(personaje, {density=0.5, friction=0.5, bounce=0.5})
end

-- Valores:  horizIzq-Der,diagonalIzq-Der, HorizDcha-Izq,DiagonalDer-Izq
local linea = display.newLine(centerX + 200,centerY + 200,0, centerY + 200)
physics.addBody( linea, "static" ,{density=0.6, friction=0.2, bounce=0.2} ) -- Le asignamos a la imagen fisica real (movimineto).

-- Your code here