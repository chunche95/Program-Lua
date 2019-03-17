-- Uso de variable local

function notaToTexto(nota)
  if(nota < 5.0 and nota >= 0.0)then
    print("Suspenso")
  else
    if ( nota >= 5.0 and nota <= 6.0 ) then
      print ("Aprobado")
    else
      if ( nota <= 8.0 ) then 
        print ("Notable")
      else
        if ( nota <=10.0) then
          print ("Sobresaliente")
        else
          print ("Hay un error")
        end
      end
    end
  end
end 

local valorNota = 2.7 -- valor para el primer if
notaToTexto(valorNota)

local valorNota2 = 5.7 -- valor para el segundo if
notaToTexto(valorNota2)

local valorNota3 = 7.7 -- valor para el tercer if
notaToTexto(valorNota3)

local valorNota4 = 9.7 -- valor para el cuarto if
notaToTexto(valorNota4)

local valorNota5 = 12.7 -- valor para el else
notaToTexto(valorNota5)


-- --------------------------------- --
-- Forma 2: Con return en la funcion --
-- --------------------------------- --

function notaToTexto(nota)
  if(nota < 5.0 and nota >= 0.0)then
    return("Suspenso")
  else
    if ( nota >= 5.0 and nota <= 6.0 ) then
      return ("Aprobado")
    else
      if ( nota <= 8.0 ) then 
        return ("Notable")
      else
        if ( nota <=10.0) then
          return ("Sobresaliente")
        else
          return ("Hay un error")
        end
      end
    end
  end
end 

local valorNota6 = 8.8
print(notaToTexto(valorNota6))