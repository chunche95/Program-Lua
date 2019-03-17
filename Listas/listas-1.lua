-- datos de empleado

miTabla = {}

miTabla[1] = "un dato" -- Entrada por valor de clave
miTabla[3] = "otro dato"

miTabla.mayor = 65 -- Entrada por valor numerico o Diccionario.
miTabla.menor = 13

for key, value in pairs(miTabla) do
   print (value) -- va sacando por pantalla todos los valores de  miTabla, recibiria el nombre de Diccionario, lo muestra segun el valor de clave.
end
  
  