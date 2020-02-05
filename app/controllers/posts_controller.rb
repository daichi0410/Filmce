class PostsController < ApplicationController
  def create
    comment = Movie.find(params[:movie_id]).posts.new(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:name)
  end
end
