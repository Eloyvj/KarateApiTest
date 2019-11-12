Feature: Tests for the resource /posts

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: get all posts and check the schema
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

  Scenario: get first post and get all comments this post
    Given path 'posts'
    When method get
    Then status 200

    * def firstPost = response[0]

    Given path 'comments'
    And param postId = firstPost.id
    When method get
    Then status 200
    And match each response contains {postId: '#(firstPost.id)'}


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

  Scenario: delete a post
    Given path '/posts/1'
    When method delete
    Then status 200









