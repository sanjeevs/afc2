module SessionsHelper

  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end

  def store_location
    session[:return_to] = request.url if request.get?
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in"
    end
  end

  # Set method.
  def current_user=(user)
    @current_user = user
  end

  # Get method. For each request we read the db for the user token.
  # If used more than once in a request then do memonization.
  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
    return @current_user
  end

  def current_user?(user)
    current_user == user
  end

  # Check if a user is signed in ?
  def signed_in?
    status = !current_user.nil?
    return status 
  end

  # Sign out a user.
  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end

end
