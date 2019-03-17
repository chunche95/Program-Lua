module(..., package.seeall)
local profesor = require "profe"


function new(vnombre, vedad, vcurso, vhoras)
      
local p_EF = profesor.new(vnombre, vedad, vcurso)

  p_EF.entrenamiento = vhoras

	function p_EF:ejercicios()
		print("abdominales")
  end
  
  function p_EF:saludar()
		print("Profe de gimnasia, un saludo")

  end
      

   return p_EF


end


