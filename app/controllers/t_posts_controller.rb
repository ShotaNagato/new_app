class TPostsController < ApplicationController

  def index
    @posts = TPost.all
  end

  def new
    @post = TPost.new
  end

  def create
    @post = current_t_user.t_posts.new(t_post_params)

    if @post.save
      flash[:success] = "ok!"
      redirect_to current_t_user
    else
      flash[:danger] = "no"
      render 'new'
    end
  end

   private
   def t_post_params
    params.require(:t_post).permit(:recruit)
   end
end
