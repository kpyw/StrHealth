class SessionsController < ApplicationController

def new
end

def destroy
  reset_session
  redirect_to login_url
end

def create
  user = User.find_by(email: params[:email])
  if user.present?
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to exercises_url
    else
      flash.now[:notice] = "Please try password again."
        render 'new'
    end
  else
    flash.now[:notice] = "Please try email again."
        render 'new'
     #  redirect_to login_url, notice: "Either your login or password does not match our system. Please check the information and try again."
  end
end

end
