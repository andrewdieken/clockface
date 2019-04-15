module Users
  class InvitationsController < Devise::InvitationsController

    def new
      self.resource = resource_class.new
      authorize current_user, :can_invite?
      render :new
    end

    def create
      result = run Users::Operations::Invite, invite_params

      if result.success?
        flash[:notice] = "An invitation email has been sent to #{result["model"].email}"
        respond_with result["model"], :location => root_path
      else
        @user = User.new
        render :new
      end
    end

    private

    def invite_params
      {
        email: params[:resource_name][:email],
        role: :branch_manager
      }
    end

  end
end
