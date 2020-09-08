class TUsersController < ApplicationController
  before_action :logged_in_t_user, only: [:edit, :update]
  before_action :correct_t_user, only: [:edit, :update]
  
  def index
   @users = TUser.all
  end

  def show
   @user = TUser.find(params[:id])
  end

  def new
    @user =TUser.new
  end

  def create
    @user =TUser.new(t_user_params)
    if @user.save
      t_log_in @user
      flash[:success] = "Welcome to the New App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update(t_user_params)
      flash[:success] = "更新しました。"
      redirect_to @user
    else
      render 'edit'
    end
  end



  private

   def t_user_params
    params.require(:t_user).permit(:name, :email, :password,
      :password_confirmation, :profile)
   end

   def logged_in_t_user
    unless t_logged_in?
     store_location
     flash[:danger] = "ログインしてください"
     redirect_to login_url
    end
   end

   def correct_t_user
    @user = TUser.find(params[:id])
    redirect_to(root_url) unless current_t_user?(@user)
   end
end
