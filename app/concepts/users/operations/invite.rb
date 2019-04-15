module Users
  module Operations
    class Invite < ApplicationOperation

      step :create_user!
      step Policy::Pundit(UserPolicy, :can_invite?)
      step :update_invitation
      step :send_invite_email

      def create_user!(options, params:, **)
        options["model"] = User.invite!(params) do |u|
          u.skip_invitation = true
        end
      end

      def update_invitation(options)
        options["model"].update(invitation_sent_at: Time.now.utc)
      end

      def send_invite_email(options, params:, **)
        InvitationMailer.send_message(
          options["model"].id,
          token: options["model"].raw_invitation_token
        ).deliver
      end

    end
  end
end
