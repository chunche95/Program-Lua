require "turtle"

function poligono(lados,paso)
  for i=1, lados
  do
    move(paso)
    turn(360/lados)
  end
end

-- poligono(7,50) -- Dibujo de un heptágono simple
--wait()

--
for i=1, 12 do -- Dibujo de 12 heptágonos con un giro de 30 grados sobre un eje
  poligono(7,50)
  turn(30)
end
wait()
