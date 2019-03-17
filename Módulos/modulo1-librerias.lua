--[[ Importante no llamar a un módulo como 'main.lua', nunca.

Los módulos cogen los valores y variables, seguidamente crea tablas.

Para incluir un módulo externo lo puedo llamar con un require(); 

]]


local f = require("physics"); -- physics ya existe la libreria en Lua y la precarga para el programa.
f.addNewImage.
-- Precargo las librerias de sistema y las guardo en una variable de mismo nombre que la libreria precargada.
math = require("math");
string = require("string");


local g = require("modulos1-fichero"); -- Llamo un fichero creado mio y lo carga en el programa actual.

-- Llamada de librerias.
math.cos(20)
string.char("s")
math.pi
  


