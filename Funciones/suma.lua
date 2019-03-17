function suma(num1,num2)
  -- local resultado
  -- print ("La suma de " ..  num1 .. " + " .. num2 .. " = " .. resultado)
  -- Lo más conveniente es usar un return para dar el valor resultado a la llamada suma() de la parte de abajo.
  resultado = (num1 + num2)
  return resultado
end

local primero = 5
local segundo = 25

respuesta = suma(primero, segundo)
print ("La suma da: " ..  resultado)
print (respuesta)
print ("Resultado de " .. primero .. " + " .. segundo .. " es " ..  suma(primero,segundo))