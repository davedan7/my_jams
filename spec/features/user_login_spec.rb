require 'rails_helper'

RSpec.describe "user login" do
  context "with valid attributes" do
    it "shows user dashboard" do
      User.create(first_name: "Joe",
        last_name:             "Dirt",
        username:              "testuser",
        password:              "password",
        password_confirmation: "password")

      visit login_path
      fill_in "session[username]", with: "testuser"
      fill_in "session[password]", with: "password"
      click_link_or_button "Login"

      expect(page).to have_content("Welcome, Joe!")
    end
  end
end