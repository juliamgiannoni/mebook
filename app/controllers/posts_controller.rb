class PostsController < ApplicationController

  def index
    @posts = Post.all
    @posts = @posts.sort_by {|obj| obj.created_at }.reverse
    $user = User.all
    @post = Post.new

  end

  def create
    @user = User.all
    if User.exists?
      @post = Post.create(post_params)
      if @post.save
        redirect_to root_path
      else
        render :new
      end
    end

  end

  private
    def post_params
      params.require(:post).permit(:content)
    end


end
