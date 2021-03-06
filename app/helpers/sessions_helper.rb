module SessionsHelper

  def login(user)
    session[:id] = user.id
  end

  def current_user
    @current_user ||= Teacher.find(session[:id]) if session[:id]
  end

  def logged_in?
    !!current_user
  end

  def logout
    session[:id] = nil
  end
end
