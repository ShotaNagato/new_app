class SUsersController < ApplicationController
  before_action :logged_in_s_user, only: [:edit, :update]
  before_action :correct_s_user, only: [:edit, :update]
  
  def index
   @users = SUser.all
  end

  def show
    @user = SUser.find(params[:id])
  end

  def new
    @user = SUser.new
  end

  def create
    @user = SUser.new(s_user_params)
    if @user.save
      s_log_in @user
      flash[:success] = "Welcome to the New App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update(s_user_params)
      flash[:success] = "更新しました。"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
   def s_user_params
    params.require(:s_user).permit(:name, :email, :password,
      :password_confirmation)
   end

   def logged_in_s_user
    unless s_logged_in?
     store_location
     flash[:danger] = "ログインしてください"
     redirect_to login_url
    end
   end

   def correct_s_user
    @user = SUser.find(params[:id])
    redirect_to(root_url) unless current_s_user?(@user)
   end
end
