class RemoveCategoryFromRecipes < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipes, :category, :string
  end
end
