class Admin::BaseController < ApplicationController

  # Require basic admin authentication, all other admin controllers
  # will now inherit from this BaseController
  http_basic_authenticate_with name: ENV['AUTH_LOGIN'], password: ENV['AUTH_PASSWORD']

end