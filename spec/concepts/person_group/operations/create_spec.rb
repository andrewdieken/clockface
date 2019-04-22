require "rails_helper"

module PersonGroup
  module Operations
    RSpec.describe Create, vcr: { record: :once, match_requests_on: [:body] } do
      let(:branch) { create(:branch) }

      it "creates a person group" do
        op = described_class.(branch: branch)

        expect(op.success?).to be_truthy
      end
    end
  end
end
