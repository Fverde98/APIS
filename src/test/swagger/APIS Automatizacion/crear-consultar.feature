Feature: API mascotas de swagger
  Scenario Outline: Crear orden
    Given url "https://petstore.swagger.io/v2"
    And path "/store/order"
    And request
    """
    {
      "id": <id> ,
      "petId": <petId>,
      "quantity": <quantity> ,
      "shipDate": <shipDate>,
      "status": <status>,
      "complete": <complete>
    }
    """
    When  method post
    Then status 200
    Examples:
      |  | id | petId | quantity | shipDate             | status   | complete |  |  |  |
      |  | 1  | 101   | 2        | 2024-12-20T12:00:00Z | placed   | true     |  |  |  |
      |  | 2  | 102   | 1        | 2024-12-22T12:00:00Z | approved | false    |  |  |  |

  Scenario Outline: Consultar orden por id
    Given url "https://petstore.swagger.io/v2"
    And path "/store/order/<orderId>"

    When method get
    Then status 200
    Examples:
      | orderId |  |
      | 2       |  |

