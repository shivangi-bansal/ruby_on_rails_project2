class ApplicationController < ActionController::Base

    helper_method :logged_in?, :current_user, :require_user

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id] 
end

def logged_in?
    !!current_user
end

def require_user
    if !logged_in?
        flash[:danger] = "you must be logged in to perform that action"
    redirect_to root_path
    end
    end

end
