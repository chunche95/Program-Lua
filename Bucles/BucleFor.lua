function dibujaHexagono(numVuelta,paso)
  angulo=360/numVuelta
  for i=1 , numVuelta  do
      print("----Vuelta nº " ..i)
      paso=paso+1
      print(paso)
  end
end 
 dibujaHexagono(12,1)