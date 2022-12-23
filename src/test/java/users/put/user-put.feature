Feature: Get user on regres

  Scenario: Get user
    Given url "https://reqres.in"+"/api/users/"+"2"
    And request { "name": "morpheus", "job": "zion resident" }
    When method put
    Then status 200
    And match $.name =='morpheus'
