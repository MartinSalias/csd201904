Feature: Juego de AHORCADO

Scenario: Ir al inicio
	Given voy a la home
	Then veo "JUEGO DE AHORCADO"

Scenario: Ingresar una letra incorecta
	Given voy a la home
	When ingreso en "campo" con "Z"
	Then veo "No encontrada"

Scenario: Ingresar una letra correcta
	Given voy a la home
	When ingreso en "campo" con "m"
	Then veo "Encontrada"
