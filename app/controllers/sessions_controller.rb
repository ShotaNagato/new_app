class SessionsController < ApplicationController
  def new
  end

  def create
    s_user = SUser.find_by(email: params[:session][:email].downcase)
    t_user = TUser.find_by(email: params[:session][:email].downcase)
    if s_user && s_user.authenticate(params[:session][:password])
       s_log_in s_user
       redirect_to s_user
    elsif t_user && t_user.authenticate(params[:session][:password])
       t_log_in t_user
       redirect_to t_user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    s_log_out || t_log_out
    redirect_to root_url
  end
end
