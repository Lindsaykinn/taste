class SessionsController < ApplicationController

  def new 
   
  end

  #logging in w/o omniauth
  def create 
    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password])
      login_user
      redirect_to recipes_path
    else
      render :new
    end
  end

  #logging in with omniauth through Google
  def omniauth
    @user = User.find_or_create_by(email: auth["info"]["unverified_email"]) do |user|
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
