Feature: Test in get verb for resource /posts

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









