Feature: Get user on regres

  Scenario: Get user
    * call read("../posts/user-post-snippets.feature@Create")
    Given url "https://reqres.in/"+"api/users/"+ contactId
    When method delete
    Then status 204


