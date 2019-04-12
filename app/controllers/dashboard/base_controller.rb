class Dashboard::BaseController < ApplicationController
  before_action :authenticate_regional_manager!
end
