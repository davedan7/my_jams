require 'test_helper'
class SongCreationTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  test "user can create a song" do 
    visit new_song_path
    fill_in "song[title]", with: "boogie"
    fill_in "song[artist]", with: "woogie"
    click_link_or_button "BUTTON"
    assert page.has_content?("boogie")
    assert page.has_content?("woogie")
  end
end