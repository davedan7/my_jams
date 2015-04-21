require 'rails_helper'

RSpec.describe 'user logout' do
  context "when logged in" do
    it 'logs out the user' do
      User.create(first_name: "Joe",
        last_name:             "Dirt",
        username:              "testuser",
        password:              "password",
        password_confirmation: "password")

      visit login_path
      fill_in "session[username]", with: "testuser"
      fill_in "session[password]", with: "password"
      click_link_or_button 'Login'

      expect(page).to have_content("Welcome, Joe!")

      click_link_or_button 'Logout'

      expect(page).to have_content("Goodbah!")
    end
  end
end