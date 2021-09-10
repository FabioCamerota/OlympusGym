Feature: Admins can post and delete comunications
Scenario: An Admin posts a comunication and then deletes it
	Given I am authenticated as Admin
	Given I am on OlympusGym homepage
	Then I follow "Comunicazioni"
	And I should be on the Comunications Page
	Then I follow "Crea comunicazione"
	And I should be on the Create Comunication Page
	Then I fill in "Testo" with "Comunicazione di prova"
	And I press "Pubblica"
	Then I should be on the Comunications Page
	And I should see "Comunicazione di prova"
	And I should see "Elimina comunicazione"
	Then I follow "Elimina comunicazione"
	Then I should be on the Comunications Page
	And I should not see "Comunicazione di prova"