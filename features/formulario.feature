Feature: Juego de AHORCADO

Scenario: IR AL INICIO
	Given voy a la home
	Then veo "JUEGO DE AHORCADO"

Scenario: INGRESAR UNA LETRA
	Given voy a la home
	When ingreso en "campo" con "Z"
	Then veo "No encontrada"

Scenario: INGRESAR UNA LETRA
	Given voy a la home
	When ingreso en "campo" con "m"
	Then veo "Encontrada"
