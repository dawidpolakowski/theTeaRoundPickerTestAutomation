@notImplemented @assignee:Dawid.Polakowski @participantsView
Feature: Manage participants

  First of all user is on the homepage from where is 
  a view of list of participants.
  The user is able to add multiple participants
  and see list of those added.

  Scenario Outline: Add first participant

    Given user is on the homepage with no participants in list
    When user enters a participants name
    And  add <drink> to the description of the drink requested 
    Then user see participant name and <drink> on the list

 Examples:
      | drink                            |
      | none                             |
      | Chamomile Tea                    |
      | Peppermint Tea                   |
      | Ginger Tea                       |
      | Yerba Mate                       |
      | Echinacea Tea                    |
      | Chamomile Tea                    |

  Scenario: Add another participants

# In this scenario, drinks will be randomly picked 
# in test backend

    Given user is on the homepage
    And see list with at least one participant
    When user enters a participants name
    And drink to the description of the drink requested 
    Then  user see participant name and drink on the list
    
  Scenario: Remove participants

    Given user is on the homepage
    When 
    Then 
    