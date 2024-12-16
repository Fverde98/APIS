Feature: API mascotas de swagger
  Scenario Outline: Crear Mascota
    Given url "https://petstore.swagger.io/v2"
    And path "/pet"
    And request
    """
    {
      "id": <idPet>,
      "category": {
        "id": 3,
        "name": <nombreCategoria>
      },
      "name": <NombreMascota>,
      "photoUrls": [
        "string"
      ],
      "tags": [
        {
          "id": 0,
          "name": "string"
        }
      ],
      "status": "available"
    }
    """
    When  method post
    Then status 200
    Examples:
      | idPet | nombreCategoria | NombreMascota |
      | 9898  | Mascota amigable | Simba |
  Scenario Outline: Consultar Mascota
    Given url "https://petstore.swagger.io/v2"
    And path "/pet/<idPet>"
    When method get
    Then status 200
    Examples:
      | idPet |  |
      | 9898  |  |

