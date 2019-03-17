module(..., package.seeall)

function new(vnombre, vedad, vcurso)
   local p= {} -- Lista vacia
   -- Atributos
      p.name = vnombre
      p.edad = vedad
      p.curso = vcurso
   -- Funcion para profesor -- Metodo saludar
	function p:saludar()
		print("Hola soy ".. p.name)

	end
   return p
end