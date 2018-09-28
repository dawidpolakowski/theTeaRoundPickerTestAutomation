@notImplemented @assignee:Dawid.Polakowski @participantsView
Feature: Manage participants
  
  In this feature, we are testing participants list management.
  The user is on app first view with a list of participants.


  Scenario Outline: Add the first participant

    Given user is on the homepage with no participants in the list
    When user enters a participants name
    And  add <drink> to users description of the drink requested 
    Then user see added participant name on the list
    And <drink> on users description of the drink requested

 Examples:
      | drink                            |
      | none                             |
      | Chamomile Tea                    |
      | Peppermint Tea                   |
      | Ginger Tea                       |
      | Yerba Mate                       |
      | Echinacea Tea                    |
      | Chamomile Tea                    |

  Scenario: Add another participant

# In this scenario, drinks will be randomly picked 

    Given user is on the homepage
    And see list with at least one participant
    When user enters a participants name
    And drink to the description of the drink requested 
    Then  user see participant name on the list
    And drink on users description of the drink requested
    
  Scenario: Remove participant

    Given user is on the homepage
    And see list with at least one participant
    When user click "delete" next to the name of the participant
    Then chosen participant is removed from the list
    