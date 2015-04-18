# Feature: Login
#   As a user
#   I want to Login
#   So I can visit protected areas of the site
feature 'Login', :devise do

  # Scenario: User cannot Login if not registered
  #   Given I do not exist as a user
  #   When I Login with valid credentials
  #   Then I see an invalid credentials message
  scenario 'user cannot Login if not registered' do
    signin('test@example.com', 'please123')
    expect(page).to have_content I18n.t 'devise.failure.not_found_in_database', authentication_keys: 'email'
  end

  # Scenario: User can Login with valid credentials
  #   Given I exist as a user
  #   And I am not signed in
  #   When I Login with valid credentials
  #   Then I see a success message
  scenario 'user can Login with valid credentials' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    expect(page).to have_content I18n.t 'devise.sessions.signed_in'
  end

  # Scenario: User cannot Login with wrong email
  #   Given I exist as a user
  #   And I am not signed in
  #   When I Login with a wrong email
  #   Then I see an invalid email message
  scenario 'user cannot Login with wrong email' do
    user = FactoryGirl.create(:user)
    signin('invalid@email.com', user.password)
    expect(page).to have_content I18n.t 'devise.failure.not_found_in_database', authentication_keys: 'email'
  end

  # Scenario: User cannot Login with wrong password
  #   Given I exist as a user
  #   And I am not signed in
  #   When I Login with a wrong password
  #   Then I see an invalid password message
  scenario 'user cannot Login with wrong password' do
    user = FactoryGirl.create(:user)
    signin(user.email, 'invalidpass')
    expect(page).to have_content I18n.t 'devise.failure.invalid', authentication_keys: 'email'
  end

end
