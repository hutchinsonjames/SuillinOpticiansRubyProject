# Feature: Navigation links
#   As a visitor
#   I want to see navigation links
#   So I can find home, Login, or Register
feature 'Navigation links', :devise do

  # Scenario: View navigation links
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "home," "Login," and "Register"
  scenario 'view navigation links' do
    visit root_path
    expect(page).to have_content 'Home'
    expect(page).to have_content 'Login'
    expect(page).to have_content 'Register'
  end

end
