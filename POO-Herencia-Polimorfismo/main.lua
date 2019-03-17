-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

--[[----------------------------------------------------------------------
|   [--->> CLASE PADRE <<---]
|
|   Persona = nombre,edad, trabajar, duermir, comer
|      ||
|      ||
|      |L__|\   [C.Hija]                                        HERENCIA              +         ESPECIALIZACIÓN
|      |___  > Funcionario: Persona + antigüedad --> comparten los métodos de persona + los propios atributos de funcionario
|      ||  |/
|      ||
|      ||
|      ||
|      |L__|\  [C.Hija]                                     HERENCIA              +         ESPECIALIZACIÓN
|      |___  > Pintor: Persona + Gotele --> comparten los métodos de persona + los atributos propios de pintor
|          |/
|
| --> ¿Un funcionario es una persona? - Sí, entonces heredo.
| --> ¿Un pintor es una persona? - Sí, entonces heredo.
| --> ¿Un funcionario es un pintor? - No, no hay herencia.
| --> ¿Un pintor es un funcionario? - No, entonces no hago uso de la herencia.
|   
|   -----------------------------
|           REDIRECCION
|   -----------------------------
|       
|   Ex [Redirección]: Juan(Funcionario) -- "Juan Duerme!"
|   --
|       Busca en la clase funcionario, como no es un atributo de él, busca dentro de su clase padre, que es función de ella y lo ejecuta.
|   
|   
|   Ex[Sin redirección]: Loli(Pintora) -- "Loli pinta al gotelé"
|   --
|       Busco en la clase pintor, como es un atributo, lo realizo/ejecuta.
|      
|   ----------------------------
|           POLIMORFISMO
|   ----------------------------
|      
|   Ex: Manolo(pintor experto) -- "Esta pared al gotelé fino!"
|   --
|       Clase padre (pintor) > Clase hija (pintor_experto)
|           nombre                      gotelé_fino
|           edad
|           trabaja
|           duerme
|           come
|           gotelé
|   Como se crea un atributo 'gotelé_fino' en la clase hija, aunque herede la clase padre, la clase hija a la hora de buscar
|   que accion ejecutar, hará  la propia de ella, antes que buscar y ejecutar la de su clase padre.
|

-- Fondo de pantalla
-- Coordenadas para centrar la imagen

local halfW = display.viewableContentWidth / 2
local halfH = display.viewableContentHeight / 2

-- Buscamos el centro de la pantalla del dispositivo
local centerX = display.contentCenterX
local centerY = display.contentCenterY

-- Buscamos el alto y ancho de la pantalla
local alto = display.contentHeight
local ancho = display.contentWidth
]]

-- Introducimos el objeto de profesores
local profesor_EF = require "profe_EF"
local profesor = require "profe"

-- Introducimos valores a los atributos
local Juan = profesor.new("Juan", 33, "Lua")
local Paqui = profesor.new("Paquita", 28)
local Marco = profesor.new("Marco", 22)

local Maria = profesor_EF.new("María", 25, "EF", "65")


print(Juan.name)
print(Juan.edad)
Juan.saludar()
print(Juan.curso)
print("\n")

print(Paqui.edad)
Paqui.saludar()
print(Paqui.curso)
print("\n")

print(Maria.edad)
print(Maria.entrenamiento)
Maria.saludar()

-- Your code here