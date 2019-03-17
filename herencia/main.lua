local profesor = require "profe"
local profesor_EF = require "profe_EF"

local pep = profesor.new("Pepe", 18, "Lua")  
local luis = profesor.new("Luis", 20)
local juan = profesor.new("Juan", 30)

local yolanda = profesor_EF.new("Yolanda", 25, "EF", "56")



--[[function juan:saludar()
  print ("Iniciando curso")
end]]

print(juan.name)
print(juan.edad)
juan.saludar()
print(juan.curso)
print("\n")

print(pep.edad)
pep.saludar()
print(pep.curso)
print("\n")

print(yolanda.edad)
print(yolanda.entrenamiento)
yolanda.saludar()











