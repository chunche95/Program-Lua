-- Definicion de la funcion.
-- local: solo se puede usar en el bloque de codigo definido.
local function funcionSinParametros()
  print ("algo")
end

-- Llamada de la funcion 
funcionSinParametros()

-- Definicion de funcion con un parametro.
local function funcionConUnParametros(nombreCompleto)
  print (nombreCompleto)
end

funcionConUnParametros("Pepito Perez del Mar")


-- Ejemplo 2
local function nombre(nombreCompleto)
  print (nombreCompleto)
end

local miNombre = nombre -- Llamamos a una variable local 'miNombre' y le asignamos el valor de una variable 'nombre',
miNombre("Pepito Perez del Mar") -- seguidamente esa variable local asigna el definicion de la variable local miNombre.


local function funcionConDosParametros(nombre,apellidos)
  print (nombre .. " " .. apellidos)
end

funcionConDosParametros("Pepito","Perez del Mar")

local miNombre2 = funcionConDosParametros
miNombre2("Pepito Perez del Mar")


-- Funcion Global de una funcion.
-- Global: funciona a lo largo de todo el programa.

function function registro(nombrePila, apellidos)
  print(nombrePila.. " " .. apellidos )
end
-- Asignar funciones a elementos de tablas.
alumno = {}
  alumno.nombreAlumno = nombre
  alumno.apellinoAlumno = "Lopez"
  alumno.nombreAlummno("Pepe","Garcia Perez")
  
  
   -- -------------------->> "FORMA NO TRADICIONAL" <<--------------------------- --
local alumno = {} -- Lista vacia
alumno.nombreAlumno = function(nombre,apellido) -- Asigno a la variable TODA la funcion, funcion con dos parametros.
  return(nombre .. " " .. apellido) -- Valor que se imprime en la salida por pantalla --> 'NOMBRE APELLIDO'
end -- Final de la funcion
print(alumno.nombreAlumno( "Pepito","Garcia del Mar")) -- Imprimo los valores que se van a guardar en la lista. llamando la variable, que llama la funcion.

