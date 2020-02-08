Feature: User should register
  Scenario: user should be registering with valid data
    Given I'm on registration page
    When i provide valid signup data
    Then i should register

  Scenario: User should be registering with invalid data
      Given I'm on registration page
      When i provide invalid signup data
      Then i shouldn't register

  Scenario: User should be registering with valid data after clearing old data
    Given I'm on registration page
    When i provide signup data
    And i clear signup 
    And i provide signup data
    Then i should register

  
    # will execute only once - will call the same stepDefinition "validate the user registration"
  Scenario: validate the user registration
    Given I'm on registration page
    When  I enter firstname "Rob"
    When  I enter lastname "Smith"
    Then i should register