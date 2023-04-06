require 'rails_helper'

RSpec.describe "Parks Index" do
  describe "As a user, when I visit the parks index" do
    it "I see a list of parks for the state" do
      visit "/parks?state=TN"
save_and_open_page

      expect(page).to have_content("All Parks in TN")
      expect(page).to have_content("Andrew Johnson National Historic Site")
    end
  end
end