require 'rails_helper'

RSpec.describe "User creates a song" do
  context 'with valid atributes' do
    it 'saves and displays the song title' do
      visit new_song_path
      fill_in "song[title]", with: "boogie"
      fill_in "song[artist]", with: "woogie"
      click_link_or_button "BUTTON"
      expect(page).to have_content("boogie") 
      expect(page).to have_content("woogie")
    end
  end

end