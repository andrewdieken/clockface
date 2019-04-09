require "rails_helper"

module Face
  module Operations
    RSpec.describe Detect, vcr: { record: :once, match_requests_on: [:body] } do

      it "detects a face given an image uri" do
        op = described_class.()

        expect(op.success?).to be_truthy
      end
    end
  end
end
