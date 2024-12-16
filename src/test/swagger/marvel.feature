Feature: Obtener personajes
Scenario Outline: Listar personajes

  Given url "https://gateway.marvel.com/v1/"
  And path "/public/characters"
  And param apikey = "<publickey>"
  And header Referer = 'developer.marvel.com'
  When method get
  Then status 200
  Examples:
    | publickey |  |
    | 48c2a4deb1885b9ce6428e962df839b5  |  |
