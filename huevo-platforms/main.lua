-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Fondo de pantalla
-- Coordenadas para centrar la imagen

local halfW = display.viewableContentWidth / 2
local halfH = display.viewableContentHeight / 2

-- Ocultamos status bar (barra de estado)
 display.setStatusBar(display.HiddenStatusBar)

--Cargamos imagen
local background = display.newImage("fondo.jpg", halfW,halfH)



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
local pelota = display.newImage("huevo.gif",25,20) -- Localizacion inicial de la pelota 
physics.addBody ( pelota, "dynamic", { density=.8, friction=.9, bounce= 0.5}) -- parametros de la pelota al caer


--Dibujo de las plataformas
-- Damos color a las plataformas
local valorColor = math.random(255)
-- Plataforma 1
local plataforma1 = display.newRect(100/3,centerY -100 ,ancho,10)
physics.addBody ( plataforma1, "static", { density=.8, friction=0.7, bounce= 0.8})
plataforma1:setFillColor(valorColor, valorColor/255,valorColor)
-- Plataforma 2
local plataforma2 = display.newRect(100*3,centerY + 60 ,ancho,10)
physics.addBody ( plataforma2, "static", { density=.8, friction=0.7, bounce= 0.8})
plataforma2:setFillColor(valorColor/255, valorColor,valorColor)
-- Plataforma 3
local plataforma3 = display.newRect(100/3,centerY + 200 ,ancho,10)
physics.addBody ( plataforma3, "static", { density=.8, friction=0.7, bounce= 0.8})
plataforma3:setFillColor(valorColor, valorColor,valorColor/255)
--Dibujo del bloques

for i=1, 3 do
-- bloque 1
    local bloque1 = display.newRect(ancho/5 + 90, centerY -250 + 30 * i , 30, 30)
    physics.addBody ( bloque1, "dynamic", { density=-1.5, friction=0.2, bounce= 0.5})
    bloque1:setFillColor(0, valorColor,0)
-- bloque 2
    local bloque2 = display.newRect(ancho/5 + 90, centerY -140 + 30 * i , 30, 30)
    physics.addBody ( bloque2, "dynamic", { density=-1.5, friction=0.2, bounce= 0.5})
    bloque2:setFillColor(valorColor, 0,valorColor/255)
-- bloque 3
    local bloque3 = display.newRect(ancho/5 + 90, centerY + 50 * i , 30, 30)
    physics.addBody ( bloque3, "dynamic", { density=-1.5, friction=0.2, bounce= 0.5})
    bloque3:setFillColor(0, 0,valorColor)
-- fin del bucle
end

-- Dibujo de las paredes para que no se salga de la pantalla la pelota

local paredIzquierda = display.newLine(-18,alto,-18,0)
physics.addBody ( paredIzquierda, "static", { density=.8, friction=0.7, bounce= 0.8})
local paredDerecha = display.newLine(ancho+20,alto,ancho+20,-16)
physics.addBody ( paredDerecha, "static", { density=.8, friction=0.7, bounce= 0.8})
local paredTecho = display.newLine(ancho,0,0,0)
physics.addBody ( paredTecho, "static", { density=.8, friction=0.7, bounce= 0.8})
-- Gestion de eventos --> Sirve para que al mover el raton sobre la pelota, esta se mueve.
function circleTouched(event)
    if event.phase == "began" then
        display.getCurrentStage():setFocus(pelota)
    elseif event.phase == "ended" then
        pelota:applyLinearImpulse(event.xStart - event.x , event.yStart - event.y, pelota.x, pelota.y)
        display.getCurrentStage():setFocus(nil)
    end
end
pelota:addEventListener("touch", circleTouched)
-- Your code here