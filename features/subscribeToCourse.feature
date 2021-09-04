Feature: Users can subscribe and unsubscribe to a course
Scenario: Subscribe to a course and then unsubscribe
    Given I am authenticated as User
    Given I am on OlympusGym homepage
    Then I should see "Krav Maga"
    When I follow "Prenotami"
    Then I should be on the OlympusGym homepage
    And I should see "Cancella prenotazione"
    Then I follow "Mostra tutte le mie prenotazioni"
    And I should be on the Reservations Page
    And I should see "Krav Maga"
    Then I follow "Back Course List"
    And I should be on the OlympusGym homepage
    Then I follow "Cancella prenotazione"
    Then I should be on the OlympusGym homepage
    And I should see "Prenotami"