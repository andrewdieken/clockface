class UserPolicy < ApplicationPolicy
  def new?
    user.regional_manager?
  end
end
