require "rails_helper"

module Person
  module Operations
    RSpec.describe Create, vcr: { record: :once, match_requests_on: [:body] } do
      let (:branch) { create(:branch) }
      let (:employee) { create(:employee, branch: branch) }

      it "assigns a person_id to an employee" do
        op = described_class.(employee: employee)
        model = op["model"]

        expect(op.success?).to be_truthy
        expect(model.person_id.length).to eq 36
      end
    end
  end
end
