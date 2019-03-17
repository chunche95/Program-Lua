-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------


local button = display.newRoundedRect(150,100,100,100,10) -- Bordeado redondeado (10)
button:setFillColor(255/255,0/255,0/255) -- Color rojo
-- Los atributos van con un punto.
button.strokeWidth = 6 -- Ancho del borde
-- Para llamar a las caracteristicas de las funciones uso los dos puntos (:)
button:setStrokeColor(0,0,255,250) -- Color del borde (azul)

-- Creamos un Listener TOUCH
-- Creamos un guardian a la escucha

local function printTouch(event)
    print ("toque (" .. event.phase .. ") ("..event.x..","..event.y..") ") -- Al hacer un clic en cuadrado sale por consola el'toque' con su posicion en pantalla
end

--  Objeto  Evento_Listener  Guardian Ejecucion_evento
--  |   |   |  |   |   |  |  |   |  |   |   |   |   |
--  V   V   V  V   V   V  V  V   V  V   V   V   V   V
    button:addEventListener("touch", printTouch)
     
--[[
-- Creamos un Listener TAP
-- Creamos un guardian a la escucha


-- Creacion de un Listener DRAG

local button = display.newRoundedRect(150,400,100,100,10) -- Bordeado redondeado (10)
button:setFillColor(50/255,100/255,0/255) -- Color rojo
-- Los atributos van con un punto.
button.strokeWidth = 6 -- Ancho del borde
-- Para llamar a las caracteristicas de las funciones uso los dos puntos (:)
button:setStrokeColor(0,255,0,250) -- Color del borde (azul)

function myObject:touch(event)
    if event.phase == "began" then
        self.markX = self.x
        self.markY = self.y 
    elseif event.phase == "moved" then
        local x = (event.x - event.xStart) + self.markX -- Localizacion del objeto X
        local y = (event.y - event.yStart) +  self.markY -- Localizacion del objeto Y

        self.x, self.y = x,y -- Asignacion de las posiciones x, y¡
    end

]]
-- Your code here