require 'rails_helper'

RSpec.describe User, type: :model do
  describe "roles" do
    it "can be a regional manager" do
      user = create(:user, :regional_manager)
      expect(user.regional_manager?).to be_truthy
    end

    it "can be a branch manager" do
      user = create(:user, :branch_manager)
      expect(user.branch_manager?).to be_truthy
    end
  end
end
