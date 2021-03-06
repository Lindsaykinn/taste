class UsersController < ApplicationController

def index
  @user = User.all
 
end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to recipes_path 
    else
      flash.now[:notice] = "Email provided already has an account"
      render :new
    end
  end

  def show
    @user = User.find_by_id(params[:id])
    render :show
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :recipe_id)
    end

end
