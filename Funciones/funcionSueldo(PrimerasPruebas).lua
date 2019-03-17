MAXHORAS=40
nombre="Pepe"
numHoras=45
precioHora = 15

if(numHoras>0)then
    if(numHoras>MAXHORAS)then
      sueldoBase = MAXHORAS * precioHora
      sueldoExtra = (numHoras - MAXHORAS) * precioHora * 1.5
    else
      sueldoBase = numHoras * MAXHORAS
    end
      print ("El sueldo de "..nombre.." es de: "..sueldoBase.." € (sin extras), las extras son de: " ..sueldoExtra.." €")
else
    print ("El número de horas no contiene un valor válido. ")
end    


-- ------------------------------ --
-- Ejercicio resuelto con funcion --
-- ------------------------------ --

MAXHORAS=40
nombre="Pepe"

function CalculaSueldo(numHoras, precioHora)
  if(numHoras>MAXHORAS)then
    sueldoBase= MAXHORAS * precioHora
    sueldoExtra= (numHoras - MAXHORAS) * precioHora * 1.5
  else
    sueldoBase = numHoras * precioHora
  end
  print ("Su sueldo Sr. " .. nombre .. " es de: " ..sueldoBase.." €/semana, el sueldo de las horas extra realizadas es de: "..sueldoExtra.." €")
end
CalculaSueldo(45,15)

-- -------------------------------------------------------- --
-- Forma 2: Con return e impresion al final de la ejecucion --
-- -------------------------------------------------------- --

MAXHORAS=40
function CalculaSueldo(numHoras,precioHora)
  if (numHoras > MAXHORAS)then
    sueldoBase=MAXHORAS*precioHora
    sueldoExtra=(numHoras-MAXHORAS)*precioHora*1.5
    return sueldoBase + sueldoExtra
  else
    sueldoBase = numHoras * MAXHORAS
    return sueldoBase
  end
end
nombre = "Pepe"
sueldo = CalculaSueldo(45,15)
print ("Sr. "..nombre.." su sueldo es de: "..sueldo.." €/semana")