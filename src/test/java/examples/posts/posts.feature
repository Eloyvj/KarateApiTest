Feature: Tests for the resource /posts

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: get all users and check the schema
    Given path 'posts'
    When method get
    Then status 200
    And match each response ==
    """
      {
      userId: '#number',
      id: '#number',
      title: '#string',
      body: '#string'
      }
    """
