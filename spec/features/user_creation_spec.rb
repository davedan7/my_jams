require 'rails_helper'

RSpec.describe 'new user is created' do
  context 'with valid attributes' do
    it 'creates an account' do
      visit new_user_path
      # fill_in "First name", with: "Biggie"
      fill_in "user[first_name]", with: "Biggie"
      fill_in "Last name", with: "Smalls"
      fill_in "Username", with: "boogie"
      fill_in "Password", with: "woogie"
      fill_in "Password confirmation", with: "woogie"

      click_link_or_button "Create"
      expect(page).to have_content("Welcome, Biggie!")
    end
  end
end