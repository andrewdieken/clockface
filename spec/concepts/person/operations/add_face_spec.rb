require "rails_helper"

module Person
  module Operations
    RSpec.describe AddFace, vcr: { record: :once, match_requests_on: [:body] } do
      let (:branch) { create(:branch) }
      let (:employee) { create(:employee, branch: branch) }

      it "adds a face to a Person in a PersonGroup" do
        op1 = Person::Operations::Create.(employee: employee)
        employee = op1["model"]
        image = File.new("api_playground/business_man.jpg", 'rb').read
        op2 = described_class.(
          branch: {
            id: branch.id,
            person_id: employee.person_id,
            image_data: image
          })
        persistedFaceId = op2["model"]

        expect(op1.success?).to be_truthy
        expect(op2.success?).to be_truthy
        expect(persistedFaceId.length).to eq 36
      end
    end
  end
end
