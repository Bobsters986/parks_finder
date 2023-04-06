require 'rails_helper'

RSpec.describe 'Park Search Form', type: :feature do
  describe 'As a user, when I visit the welcome page' do
    it "I see a form to search for parks by state" do
      visit root_path

      expect(page).to have_link("Park Search")
      expect(page).to have_select(:state)
      expect(page).to have_button("Find Parks")
    end

    it "when I select a state and click submit, I am redirected to the state's parks index" do
      visit root_path

      select 'Tennessee', from: :state
      click_on 'Find Parks'

      expect(current_path).to eq('/parks')
    end
  end
end