module(..., package.seeall)




function new(vnombre, vedad, vcurso)
      
local p= {}

      p.name = vnombre
      p.edad = vedad
      p.curso = vcurso


	function p:saludar()
		print("Hola soy ".. p.name)


	end
      

   return p


end


