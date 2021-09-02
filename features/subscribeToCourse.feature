Feature: Users can subscribe to a course
Scenario: Subscribe to a course
    Given I am authenticated as User
    Given I am on OlympusGym homepage
    Then I should see "Krav Maga"
    When I follow "Prenotami"
    Then I should be on the OlympusGym homepage
    And I should see "Cancella prenotazione"
