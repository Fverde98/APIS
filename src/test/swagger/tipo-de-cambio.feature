Feature: Consultar el tipo de cambio por año y mes
  Scenario Outline: Consulta tipo de cambio
    Given url "https://api.apis.net.pe/v2/sunat/tipo-cambio"
    And param year = <anyo>
    And param mes = <mes>
    And header Authorization = 'apis-token-12010.vlWeCcaKtbkDY8cHkFHge5LHuc7jXmef'
    When method get
    Examples:
      | anyo | mes |
      | 2024 | 11  |
      | 2024 | 12  |
