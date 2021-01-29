class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new

    @category.recipes.build
  end

  def create
    params[:category][:user_id] = current_user.id
    @category = Category.new(category_params)

    if @category.save
      redirect_to recipes_path
    else
      render :new
    end
  end

  def show
    @category = Category.find_by_id(params[:id])
  end

  private
  
  def category_params
    params.require(:category).permit(:name, :user_id, recipes_attributes: [:title, :description, :ingredient, :instructions, :rating])
  end
end
