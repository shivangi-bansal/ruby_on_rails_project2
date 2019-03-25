class SessionsController < ApplicationController
 
 def new
 end

  def create
    
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      session[:usert] = user.usert
      session[:user_id] = user.id
      session[:username] = user.name
      flash[:success] = "You have successfully logged in"
      redirect_to :controller => 'users', :action => 'index'
    else
      flash[:danger] = "email or password is incorrect"
      render 'new' 
  end
end



  def destroy
    session[:user_id] = nil
    session[:username] = nil
    redirect_to :controller => 'users', :action => 'first'
  end
end
