Feature: Test in put verb for resource /posts

  Background:
    * url baseUrl

  Scenario: update a post
    * def postForUpdate =
    """
      {
        id: 1,
        title: 'Foo updated',
        body: 'bar',
        userId: 1
      }
    """

    Given path '/posts/1'
    And request postForUpdate
    And header Content-Type = 'application/json'
    When method put
    Then status 200
    And match response.title == 'Foo updated'









