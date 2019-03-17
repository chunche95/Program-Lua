
require "turtle" -- Llamo el fichero turtle.lua

fin = 19 -- Numero de escalones que se han de dibujar
paso = 24 -- Tamaño del escalon
angulo = 90 -- angulo de giro para dibujar el escalon
zero(0,10) -- Punto de partida --> (vertival,horizontal)

for i=1,fin do
    move(paso)
    turn(angulo) -- Giro a la derecha
    move(paso)
    turn((-1)*angulo) -- Giro a la izquierda
end

wait() -- Espera a que cerremos la ventana