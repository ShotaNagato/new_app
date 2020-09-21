class SPostsController < ApplicationController

  def index
    @posts = SPost.all
  end

  def new
    @post = SPost.new
  end

  def create
    @post = current_s_user.s_posts.new(s_post_params)

    if @post.save
      flash[:success] = "ok!"
      redirect_to current_s_user
    else
      flash[:danger] = "no"
      render 'new'
    end
  end

   private
   def s_post_params
    params.require(:s_post).permit(:recruit)
   end
end
