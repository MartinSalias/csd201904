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

  Scenario: Mostrar la palabra escondida al ingresar todas las letras correctas
    Given voy a la home
    When ingreso en "campo" con "m"
    And ingreso en "campo" con "u"
    And ingreso en "campo" con "r"
    And ingreso en "campo" con "c"
    And ingreso en "campo" con "i"
    And ingreso en "campo" con "e"
    And ingreso en "campo" con "l"
    And ingreso en "campo" con "a"
    And ingreso en "campo" con "g"
    And ingreso en "campo" con "o"
    Then veo "murcielago"

  Scenario: Mostrar contador de error
    Given voy a la home
    When ingreso en "campo" con "m"
    And ingreso en "campo" con "f"
    Then veo "¡Llevas 1 error!"

  Scenario: Mostrar fin del juego al jugador cuando pierde
    Given voy a la home
    When ingreso en "campo" con "q"
    And ingreso en "campo" con "w"
    And ingreso en "campo" con "t"
    And ingreso en "campo" con "y"
    And ingreso en "campo" con "p"
    And ingreso en "campo" con "s"
    And ingreso en "campo" con "d"
    Then veo "¡Has perdido!"

  Scenario: Mostrar fin del juego al jugador cuando gana
    Given voy a la home
    When ingreso en "campo" con "m"
    And ingreso en "campo" con "u"
    And ingreso en "campo" con "r"
    And ingreso en "campo" con "c"
    And ingreso en "campo" con "i"
    And ingreso en "campo" con "e"
    And ingreso en "campo" con "l"
    And ingreso en "campo" con "a"
    And ingreso en "campo" con "g"
    And ingreso en "campo" con "o"
    Then veo "¡Ganaste, felicitaciones!"
