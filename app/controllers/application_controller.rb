# This controller acts as a base for all other controllers
# within this application. Anything included, configured, or extended
# within `ApplicationController` will be applied globally.
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
