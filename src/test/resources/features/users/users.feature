Feature: Users API

  Background:
    * url baseUrl

  Scenario: Retrieve an existing user
    Given path 'users', 1
    When method get
    Then status 200
    And match response.id == 1
    And match response.name == '#string'
    And assert response.name.length > 0
    And match response.email == '#string'
    And assert response.email.length > 0
