class CommentsController < ApplicationController
  before_action :find_comment, only: [:edit, :update, :destroy]
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
      comment = Comment.new(comment_params)
      comment.recipe = find_by_recipe_id(@recipe)
      
      if comment.user_id = current_user.id
        comment.save
        flash[:notice] = "Comment has been added."
        redirect_to recipe_path(comment.recipe)
      else
        flash[:notice] = "You must be logged in to post a comment."
        redirect_to recipe_path
      end
  end

  def edit
    
  end



  def update
    if @comment.user_id = current_user.id
      @comment.update(comment_params)
      flash.now[:notice] = "Your comment has been updated."
      redirect_to recipe_path
    else
      flash.now[:notice] = "You cannot update this comment."
      redirect_to recipe_path
    end
    
  end

  def destroy
    find_comment
    if current_user.id == @comment.user
    @comment = current_user.comments.find(params[:id])
    @comment.destroy
    flash[:notice] = "The comment was deleted."
    redirect_to recipes_path
    else
    redirect_to recipes_path
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def find_comment
    @comment = Comment.find(params[:id])
  end
end
