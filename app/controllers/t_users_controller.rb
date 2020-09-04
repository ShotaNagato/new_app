class TUsersController < ApplicationController
  def show
   @user = TUser.find(params[:id])
  end

  def new
    @user =TUser.new
  end

  def create
    @user =TUser.new(user_params)
    if @user.save
      t_log_in @user
      flash[:success] = "Welcome to the New App!"
      redirect_to @user
    else
      render 'new'
    end
  end

   def user_params
    params.require(:t_user).permit(:name, :email, :password,
      :password_confirmation)
   end
end
