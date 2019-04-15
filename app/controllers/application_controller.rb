class ApplicationController < ActionController::Base
  include Pundit
  include TrailblazerRunOptions
  protect_from_forgery

  rescue_from Pundit::NotAuthorizedError,
    with: :user_not_authorized

  private

  def user_not_authorized
    flash[:error] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

end
