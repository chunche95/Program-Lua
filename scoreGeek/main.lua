-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Localizacion del centro de la pantalla del dispositivo
local xcentro = display.contentCenterX
local ycentro = display.contentCenterY
-- Agregamos un sonido
local sound = audio.loadSound("WaterDrop.mp3")  --> No existe en carpeta pero se asigna asi

-- Mostramos al personaje
local geek = display.newImage("superGeek.png", xcentro, ycentro )
-- Funcion para la accion del listener
function playSound(event) --> Siempre es necesario el target 'event', ya que la funcion se usa en un Listener
    -- Activamos el sonido cargado
    audio.play(sound)
end
-- Creamos un Listener para que suene al pulsar el personaje
geek:addEventListener("touch", playSound )

-- Your code here