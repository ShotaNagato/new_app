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

 def current_s_user?(s_user)
  s_user && s_user == current_s_user
 end

 def current_t_user
  if session[:t_user_id]
    @current_user ||= TUser.find_by(id: session[:t_user_id])
  end
 end

 def current_t_user?(t_user)
  t_user && t_user == current_t_user
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

 def redirect_back_or(default)
  redirect_to(session[:forwarding_url] || default)
  session.delete(:forwarding_url)
 end

 def store_location
  session[:forwarding_url] = request.original_url if request.get?
 end


 
end

