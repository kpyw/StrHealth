class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
  end

  def new
  end

  def create
    @user = User.new
    @user.firstname = params[:user][:firstname]
    @user.lastname = params[:user][:lastname]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]

    if @user.save
      redirect_to users_url
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
      redirect_to users_url
    else
      render 'new'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
