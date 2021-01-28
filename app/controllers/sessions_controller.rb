class SessionsController < ApplicationController

  def new 
      @user = User.new
  end

  #logging in w/o omniauth
  def create 
    u = User.find_by_email(params[:user][:email])

    if u && u.authenticate(params[:user][:password])
      session[:user_id] = u.id
      redirect_to user_path(u)
    else
      redirect_to '/login'
    end
  end

  #loggin in with omniauth through Google
  def omniauth
    @user = User.find_or_create_by(email: auth["info"]["first_name"]) do |user|
      user.password = SecureRandom.hex(10)
    end
    if @user && @user.id
      session[:user_id] = @user.id
      redirect_to recipes_path
    else
      redirect_to '/login'
    end
  end  

  def destroy 
    session.clear
    redirect_to '/login'
  end

  private

  def auth
    request.env['omniauth.auth']
  end

end
