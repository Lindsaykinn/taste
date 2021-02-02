class CommentsController < ApplicationController
  def new 
    @comment = Comment.new
  end

  def show
    comment = Comment.find_by(user: current_user, recipe: find_by_recipe_id)
    # respond_to do |f|        
    #   f.json {render json: comment}       
    # end 
  end

  def create 
    if user_signed_in?
      comment = Comment.new(comment_params)
      comment.recipe = find_by_recipe_id
      comment.user = current_user
      if comment.save
        redirect_to recipe_path
      end
    else
      flash[:notice] = "You must be logged in to post a comment."
    end
  end

end
