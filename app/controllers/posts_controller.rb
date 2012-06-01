class PostsController < ActionController::Base
  layout "application"

  def index
    @post = Post.new
    @posts = Post.all
  end
end
