@notImplemented @assignee:Dawid.Polakowski @winnerPicker
Feature: Pick a winner tea maker

  The user is able to initiate the random pick of the tea maker.
  After succesfull draw user see a winner and a list of the drinks.
  
  Scenario: Draw a winner from the list of lest than two participants

    Given the user is on the draw a winner page
    And sees at least two participants
    When the user initiates the random pick
    Then user sees message participants name with "is the winner"
    And the list of the drinks to be made

  Scenario: Draw a winner from the list of more than two participants

    Given the user is on the draw a winner page
    And sees least then two participants
    When the user initiates the random pick
    Then the user sees a message "Not enough participants, add some more"
    And user can add participant to list
