Feature: Users can leave courses reviews
Scenario: User leaves a review for Krav Maga course
	Given I am authenticated as User
	Given I am on OlympusGym homepage
	Then I should see "Krav Maga"
	Then I follow "Dettagli"
	And I should be on the Course Details Page
	Then I fill in "Comments" with "Commento di prova"
	Then I select "8" from "Stelle"
	And I press "Salva recensione"
	Then I should be on the Course Details Page
	And I should see "Commenti: Commento di prova"
	And I should see "Stelle: 8"
	And I should see "Autore: test_user@olympus.com"