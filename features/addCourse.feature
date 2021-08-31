Feature: User can manually add a course
Scenario: Add a course
    Given I am on OlympusGym homepage
    When I follow "Add New Course"
    Then I should be on the Create New Course Page
    When I fill in "Nome" with "Funzionale"
    And I press "Create Course"
    Then I should be on the OlympusGym homepage
    And I should see "Funzionale"
