class StoreController < Store::BaseController
  before_action :authenticate_user!
end
