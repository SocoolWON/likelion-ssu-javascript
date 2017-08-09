class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
    else
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.delete
    else
    end
  end

  private
    def post_params
      params.require(:post).permit(:content)
    end
end
