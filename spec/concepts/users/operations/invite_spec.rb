require "rails_helper"

module Users
  module Operations
    RSpec.describe Invite do

      let!(:regional_manager) { create(:user, :regional_manager) }
      let!(:branch_manager) { create(:user, :branch_manager) }
      let!(:branch) { create(:branch) }
      let(:params) do
        {
          email: "branch_manager@foobar.com",
          first_name: "John",
          last_name: "Smith",
          branch_id: branch.id,
          role: :branch_manager
        }
      end

      context "as an authorized user" do
        it "creates the user" do
          op = described_class.(
            params,
            {
              "current_user" => regional_manager
            }
          )

          expect(op).to be_success
          expect(op["model"]).to be_persisted
          expect(op["model"].email).to eq "branch_manager@foobar.com"
          expect(op["model"].first_name).to eq "John"
          expect(op["model"].last_name).to eq "Smith"
          expect(op["model"].branch_id).to eq branch.id
          expect(op["model"].role).to eq "branch_manager"

          last_email = ActionMailer::Base.deliveries.last

          expect(last_email.subject).to eq "Welcome to Clockface!"
          expect(last_email.from).to eq ["no-reply@clockface.app"]
        end
      end

      context "as an unauthorized user" do
        it "fails" do
          op = described_class.(
            params,
            {
              "current_user" => branch_manager
            }
          )

          expect(op).to_not be_success
        end
      end

    end
  end
end

