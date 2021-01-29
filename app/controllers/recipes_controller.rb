class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]
  before_action :find_category, only: [:index, :new, :create]

  def index
    if @category 
      @recipes = @category.recipes
    else
      @recipes = Recipe.all
    end
  end

  def new
    if @category 
      @recipe = @category.recipes.build 
      render :new_category_recipe
    else
    @recipe = Recipe.new
    end
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      if @category
        redirect_to category_recipes_path(@category) 
      else
        redirect_to recipes_path
      end
    else
      flash.now[:error] = @recipe.errors.full_messages
      if @category 
        render :new_category_recipe
      else
        render :new
      end
    end
  end

  def show

  end

  def edit

  end

  def update
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe)
    else
      flash.now[:error] = @recipe.errors.full_messages
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    flash[:notice] = "#{@recipe.title} was deleted."
    redirect_to recipes_path
  end

  
  private

  def find_recipe
    @recipe = Recipe.find_by_id(params[:id])
  end

  def find_category
    if params[:category_id]
      @category = Category.find_by_id(params[:category_id])
    end
  end

  def recipe_params
    params.require(:recipe).permit(
      :title, 
      :category_id, 
      :description, 
      :ingredient, 
      :instructions, 
      :rating, 
      category_attributes: [:name, :user_id]
    )
  end
end
