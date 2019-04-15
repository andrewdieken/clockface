class UserPolicy < ApplicationPolicy
  def can_invite?
    user.regional_manager?
  end
end
