class SessionsController < ApplicationController
  def new
    @user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
  end

  def create
    @user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to user_cities_path(@user)
    else
      redirect_to root_path, notice: "Your username and/or password are incorrect!"
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
