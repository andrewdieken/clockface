class InvitationMailer < ApplicationMailer

  def send_message(user_id, options = {})
    @user      = User.find(user_id)
    @token     = options.fetch(:token)

    mail(
      to: @user.email,
      from: "no-reply@clockface.app",
      subject: "Welcome to Clockface!",
    )
  end

end
