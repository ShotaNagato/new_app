class SUsersController < ApplicationController
  def show
    @user = SUser.find(params[:id])
  end

  def new
    @user = SUser.new
  end

  def create
    @user = SUser.new(s_user_params)
    if @user.save
      flash[:success] = "Welcome to the New App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private
   def s_user_params
    params.require(:s_user).permit(:name, :email, :password,
      :password_confirmation)
   end
end
