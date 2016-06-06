class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Include all the user authentication code in controllers.
  # By default avaialable in all the views.
  include SessionsHelper
end
