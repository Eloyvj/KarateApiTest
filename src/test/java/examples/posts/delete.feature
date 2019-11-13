Feature: Test in delete verb for resource /posts

  Background:
    * url baseUrl
    
  Scenario: delete a post
    Given path '/posts/1'
    When method delete
    Then status 200









