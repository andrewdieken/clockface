require "rails_helper"

module PersonGroup
  module Operations
    RSpec.describe Train, vcr: { record: :once, match_requests_on: [:body] } do
      let(:branch) { create(:branch) }

      it "trains the person group" do
        op = described_class.(branch: branch)
        model = op["model"]

        expect(op.success?).to be_truthy
        expect(model).to be_persisted
        expect(model.trained_at).to be_truthy
      end
    end
  end
end
