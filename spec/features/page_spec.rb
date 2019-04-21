require "rails_helper"

RSpec.describe "Page navigation from root", type: :feature do
  let(:regional_manager) { create(:user, :regional_manager) }

  context "as regional manager" do

    it "shows you the Employee Clock-In page" do
      sign_in_as regional_manager
      click_on "Clock-In"
      expect(page).to have_content "Employee Clock-In"
    end

    it "shows you the Employee Clock-Out page" do
      sign_in_as regional_manager
      click_on "Clock-Out"
      expect(page).to have_content "Employee Clock-Out"
    end

    it "shows you the Employee Start Break page" do
      sign_in_as regional_manager
      click_on "Start Break"
      expect(page).to have_content "Employee Start Break"
    end

    it "shows you the Employee End Break page" do
      sign_in_as regional_manager
      click_on "End Break"
      expect(page).to have_content "Employee End Break"
    end

    it "shows you the employees scaffold" do
      sign_in_as regional_manager
      click_on "Employees"
      expect(page).to have_current_path(employees_url, url: true)
    end

  end
end
