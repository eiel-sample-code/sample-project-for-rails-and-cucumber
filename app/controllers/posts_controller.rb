class PostsController < ActionController::Base
  layout "application"

  def index
    @post = Post.new
    @posts = Post.all
  end

  def create
    @post = Post.new(params[:post])
    @post.save
    redirect_to action: :index
  end
end
