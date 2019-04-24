require "rails_helper"

RSpec.describe "Page navigation from root", type: :feature do
  let(:branch_manager) { create(:user, :branch_manager) }

  context "as branch manager" do

    it "shows you the Employee Clock-In page" do
      sign_in_as branch_manager
      click_on "Clock-In"
      expect(page).to have_content "Employee Clock-In"
    end

    it "shows you the Employee Clock-Out page" do
      sign_in_as branch_manager
      click_on "Clock-Out"
      expect(page).to have_content "Employee Clock-Out"
    end

    it "shows you the Employee Start Break page" do
      sign_in_as branch_manager
      click_on "Start Break"
      expect(page).to have_content "Employee Start Break"
    end

    it "shows you the Employee End Break page" do
      sign_in_as branch_manager
      click_on "End Break"
      expect(page).to have_content "Employee End Break"
    end

    it "shows you the employees scaffold" do
      sign_in_as branch_manager
      click_on "Employees"
      expect(page).to have_current_path(employees_url, url: true)
    end

  end

  let(:regional_manager) { create(:user, :regional_manager) }

  context "as regional manager" do

    it "shows you the Invite Branch Manager page" do
      sign_in_as regional_manager
      click_on "Invite Branch Manager"
      expect(page).to have_content "Send invitation"
    end

    it "shows you the Branches page" do
      sign_in_as regional_manager
      click_on "Branches"
      expect(page).to have_content "Branches"
    end

    it "shows you the New Branch pages" do
      sign_in_as regional_manager
      click_on "Branches"
      click_on "New Branch"
      expect(page).to have_content "New Branch"
    end

  end
end
