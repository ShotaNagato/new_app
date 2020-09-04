module SessionsHelper


def s_log_in(s_user)
  session[:s_user_id] = s_user.id
 end

 def t_log_in(t_user)
  session[:t_user_id] = t_user.id
 end

 def current_s_user
  if session[:s_user_id]
    @current_user ||= SUser.find_by(id: session[:s_user_id])
  end
 end

 def current_t_user
  if session[:t_user_id]
    @current_user ||= TUser.find_by(id: session[:t_user_id])
  end
 end

 def s_logged_in?
  !current_s_user.nil?
 end

 def t_logged_in?
  !current_t_user.nil?
 end

 def s_log_out
  session.delete(:s_user_id)
  @current_user = nil
 end

 def t_log_out
  session.delete(:t_user_id)
  @current_user = nil
 end
end

