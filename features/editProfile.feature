Feature: Users can edit their profiles
Scenario: User edits own profile
	Given I am authenticated as User
	Given I am on OlympusGym homepage
	Then I follow "Il mio Profilo"
	And I should be on the Profile Page
	Then I follow "Modifica profilo"
	And I should be on the Edit Profile Page
	When I fill in "Nome" with "Mario"
	When I fill in "Cognome" with "Rossi"
	When I fill in "Cellulare" with "3330000001"
	And I press "Update"
	Then I should be on the OlympusGym homepage
	And I follow "Il mio Profilo"
	Then I should be on the Profile Page
	And I should see "Mario"
	And I should see "Rossi"
	And I should see "3330000001"
