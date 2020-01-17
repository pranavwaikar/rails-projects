class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    p params.inspect
    @user = User.new(user_params)
    p @user.inspect
    if @user.save
      redirect_to users_url
    else
      render :new
    end
  end

  def new
    @user = User.new
  end

  def edit
  end

  def show
  end

  def update
    if @user.update(user_params)
      redirect_to users_url
    else
      render :new
    end
  end

  def destroy
  end

  private 

  def user_params
    params.require(:user).permit!
  end
end
