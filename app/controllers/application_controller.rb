class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # 以下の一文があることでApplicationControllerを継承している
  # プログラムファイルは自由にsessinoshelperのメソッドを利用することができる
  include SessionsHelper 

  def hello
  	render html: "hello, world!"
  end
end
