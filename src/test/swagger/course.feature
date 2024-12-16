Feature:Consulta de servicios habilitados por Moodle
  Background:
    * def tokenXY = null

  Scenario:Inicio de sesión para obtener token
    Given url 'https://bensg.com/test-qalab/login/token.php'
    And param username = 'pf40001'
    And param password = 'Password1!'
    And param service = 'moodle_mobile_app'
    When method post
    Then status 200
    And match response.token != null
    * print 'El body response es:',response

    * def tokenXY = response.token
  Scenario: Usar el token para consultar un webservice de Moodle.
  Given url 'https://bensg.com/test-qalab/webservice/rest/server.php'
  And header Content-Type = 'application/x-www-form-urlencoded'
  And param wsfunction = 'block_recentlyaccesseditems_get_recent_items'
  And param wstoken = '41163c4f6300d527621b2cf67f6dd485'
  And param moodlewsrestformat = 'json'
  When method post
  Then status 200
    * print 'El body response es:',response
