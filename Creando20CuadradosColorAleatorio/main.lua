-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local valorRotacion = 0 -- rotacion inicial
for i=1, 9 do  -- Bucle para dibujar cuadrado sobre cuadrado

local rectangulo = display.newRect(160, 160, 200, 200) -- Dibuja el cuadrado (centrado)
-- Para un color variable escribo la palabra random
local valorColor = math.random(255)
rectangulo:setFillColor(valorColor,valorColor/255,valorColor) -- Da color al cuadrado (amarillo)
valorRotacion = valorRotacion + 18 -- Rota el cuadrado
rectangulo.rotation = valorRotacion -- Valor de la rotacion que tendra el cuadrado   
end
-- Your code here