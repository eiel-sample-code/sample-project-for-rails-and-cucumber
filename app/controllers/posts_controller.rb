class PostsController < ActionController::Base
  layout "application"

  def index
    @posts = Post.all
  end
end
