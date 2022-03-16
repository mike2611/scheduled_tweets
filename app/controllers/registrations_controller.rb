class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # params[:user] is no secure use better user_params 
    @user = User.new(user_params)
    if @user.save
      # instead of cookies[:user_id] use :
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Successfully created account"
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end