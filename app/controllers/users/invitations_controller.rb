class Users::InvitationsController < Devise::InvitationsController
  before_action :authenticate_regional_manager!
end
