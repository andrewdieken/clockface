module Users
  class InvitationsController < Devise::InvitationsController
    def new
      self.resource = resource_class.new
      authorize current_user, :can_invite?
      render :new
    end
  end
end
