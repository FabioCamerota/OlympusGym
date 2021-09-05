Given('I am authenticated as User') do
    user = User.create!(:email => "test_user@olympus.com", :password => "test_password", :nome => "Utente",
        :cognome => "Prova", :cellulare => "0000000000", :eta => 20, :roles_mask => 1)
    visit "/users/sign_in"
    fill_in "Email", with: "test_user@olympus.com"
    fill_in "Password", with: "test_password"

    #AGGIUNGERE I FUTURI CAMPI DEL SIGN IN

    click_button "Log in"
    expect(page).to have_text("Logged in as test_user@olympus.com")
end

Given('I am authenticated as Admin') do
    admin = User.create!(:email => "test_admin@olympus.com", :password => "test_password", :nome => "Amministratore",
        :cognome => "Prova", :cellulare => "0000000000", :eta => 40, :roles_mask => 2)
    visit "/users/sign_in"
    fill_in "Email", with: "test_admin@olympus.com"
    fill_in "Password", with: "test_password"

    #AGGIUNGERE I FUTURI CAMPI DEL SIGN IN

    click_button "Log in"
    expect(page).to have_text("Logged in as test_admin@olympus.com")
end

Given('I am on OlympusGym homepage') do
    visit 'courses'
end

When('I follow {string}') do |string|
    click_link(string)
end

Then('I should be on the OlympusGym homepage') do
    current_path = URI.parse(current_url).path
    current_path == '/courses'
end

Then('I should be on the Reservations Page') do 
    current_path = URI.parse(current_url).path
    current_path == '/myreservations/index'
end

Then('I should be on the Profile Page') do 
    current_path = URI.parse(current_url).path
    current_path == '/myprofiles/[:id]'
end

Then('I should be on the Edit Profile Page') do 
    current_path = URI.parse(current_url).path
    current_path == '/users/edit'
end

Then('I should be on the Course Details Page') do
    current_path = URI.parse(current_url).path
    current_path == '/courses/[:id]' 
end

Then('I should be on the Comunications Page') do
    current_path = URI.parse(current_url).path
    current_path == '/comunications' 
end

Then('I should be on the Create Comunication Page') do
    current_path = URI.parse(current_url).path
    current_path == '/comunications/new' 
end

Then('I should see {string}') do |string|
    expect(page).to have_content(string)
end

Then('I should not see {string}') do |string|
    expect(page).to have_no_content(string)
end

When('I fill in {string} with {string}') do |field, value|
    fill_in(field, :with => value)
end

When('I select {string} from {string}') do |option, field|
    select(option, :from => field)
end

When('I press {string}') do |string|
    click_button(string)
end

Then('I should be on the Create New Course Page') do
    current_path = URI.parse(current_url).path
    current_path == 'courses/new'
end

