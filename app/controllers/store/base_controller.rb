class Store::BaseController < ApplicationController
  before_action :authenticate_user!
end
