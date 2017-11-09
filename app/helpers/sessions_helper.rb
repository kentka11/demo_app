module SessionsHelper

  # 渡されたユーザーでログインする
  def log_in(user)
  	session[:user_id] = user.id
  end

  # 現在ログイン中のユーザを返す(存在する場合)
  def current_user
  	# Rubyの||=というイディオムは左辺が未定義または偽なら代入の意味
  	@current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
  	!current_user.nil?
  end

end
