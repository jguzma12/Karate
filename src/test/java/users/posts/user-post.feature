Feature: Get user on regres

  Background:
    * url "https://reqres.in"
    * path "/api/users"
    * def var = {"name": "#(name)", "job": "#(job)" }

  Scenario: Get user
    Given request var
    When method post
    Then status 201

  Scenario Outline: Post a user
    Given request var
    When method post
    Then status 201
    Examples:
      | name   | job      |
      | juan   | vendedor |
      | carlos | banquero |
      | ruben  | youtuber |


