class Admin::BaseController < ApplicationController
  
  # Require basic admin authentication
  http_basic_authenticate_with name: ENV['AUTH_LOGIN'], password: ENV['AUTH_PASSWORD']

end