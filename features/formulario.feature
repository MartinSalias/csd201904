Feature: Juego de AHORCADO

Scenario: IR AL INICIO
	Given voy a la home 
	Then veo "JUEGO DE AHORCADO"
	
Scenario: INGRESAR UNA LETRA
	Given voy a la home
	When ingreso en "campo" con "A"
	Then veo "No encontrada"

Scenario: INGRESAR UNA LETRA
	Given voy a la home
	When ingreso en "campo" con "B"
	Then veo "Encontrada"
