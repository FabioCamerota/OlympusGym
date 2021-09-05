Feature: Banned users cannot visualize website pages
Scenario: A banned user tries to acess the website
	Given I am authenticated as a Banned User
	Given I am on OlympusGym homepage
	Then I should not see "Lista dei corsi"
	And I should see "Il tuo account è stato bannato dagli amministratori di OlympusGym"
	Then I visit "comunications"
	And I should not see "Comunicazioni:"
	And I should see "Il tuo account è stato bannato dagli amministratori di OlympusGym"
	Then I visit "myprofiles/0"
	And I should not see "Il mio profilo"
	And I should see "Il tuo account è stato bannato dagli amministratori di OlympusGym"