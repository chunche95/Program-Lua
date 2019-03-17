-- Funciones avanzadas.

-- Lista
local alumno = {}

-- Creacion de la funcion y asignacion a una variable

alumno.nombreAlumno = function (nombrePila, apellido)
  return (nombrePila .. " " .. apellido)
end
-- Entrada de valores a la variable anterior.
print (alumno.nombreAlumno("José", "Fernández"))
-- Sale por pantalla, gracias al return de la funcion: José Fernández

--[[ --------------------------------- --
                FORMA 2                
--   --------------------------------- ]]

-- Lista que guarda datos y funciones
local alumna = {
  codAlumno = 1,
  edad = 17,
  nombrePila = "Pepita",
  apellidos = "Gutierrez Marco",
  
  nombreAlumno = function(nombrePila, apellidos)
    return(nombrePila .. " " .. apellidos)
  end
}

-- Solicito por pantalla algunos datos de la lista creada.

print ("El código-nombre del alumno es: " .. alumna.codAlumno,alumna.nombrePila)