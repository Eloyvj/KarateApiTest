Feature: Test in verb post for resource /posts

  Background:
    * url 'https://jsonplaceholder.typicode.com'

   Scenario: create a new post
     * def newPost =
   """
    {
      title: 'foo',
      body: 'bar',
      userId: 1
    }
   """
     Given path 'posts'
     And request newPost
     And header Content-Type = 'application/json'
     When method post
     Then status 201
     And match response.title == 'foo'








