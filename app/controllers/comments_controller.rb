class CommentsController < ApplicationController
  before_action :set_movie
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = @movie.comments
    render json: @comments
  end

  def show
    render json: @comment
  end

  def create
    @comment = Comment.new(comment_params.merge!(movie_id: @movie.id))

    if @comment.save
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def update
    if @comment.update(comment_params)
      render json: @comment, status: :ok
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    render :nothing => true, :status => 204 if @comment.destroy  
  end

  private
  
  # Use callbacks to share common setup or constraints between actions.
  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
      
  def set_comment
    @comment = @movie.comments.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
    params.require(:comment).permit(:description, :movie_id)
  end
end