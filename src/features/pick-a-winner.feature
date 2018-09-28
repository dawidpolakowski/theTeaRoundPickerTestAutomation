@notImplemented @assignee:Dawid.Polakowski @winnerPicker
Feature: Pick a winner tea maker

  In this feature, we are testing random pick of the tea maker.
  After a successful draw user sees a winner and a list of the drinks.
  
  Scenario: Draw a winner from the list of fewer than two participants

    Given the user is on the draw a winner page
    And sees less than two participants    When the user initiates the random pick
    Then the user sees a message "Not enough participants, add some more"
    And user can add a new participant to list
    
  Scenario: Draw a winner from the list of more than two participants

    Given the user is on the draw a winner page
    And sees at least two participants
    When the user initiates the random pick
    Then user sees message participants name with "is the winner"
    And the list of the drinks to be made