class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to recipes_path 
    else
      render :new
    end
  end

  def show

  end

  
  private

  def find_recipe
    @recipe = Recipe.find_by_id(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :description, :ingredient)
      # ingredients_attributes: [:id, :name], direction_attributes: [:id, :step])
  end
end
