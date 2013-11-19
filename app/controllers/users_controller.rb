class UsersController < ApplicationController

 before_action :set_user, only: [:show, :edit, :update, :destroy]
 before_action :require_login, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.firstname = params[:user][:firstname]
    @user.lastname = params[:user][:lastname]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = @user.password

    if @user.save
      session[:user_id] = @user.id
      redirect_to exercises_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @user.firstname = params[:user][:firstname]
    @user.lastname = params[:user][:lastname]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]

    if @user.save
      redirect_to exercises_url
    else
      render 'new'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url
  end

  private
  def require_login
    if params[:id] != session[:user_id]
      redirect_to root_url
    end
  end

  def set_user
    @user = User.find(params[:id])
  end

end
