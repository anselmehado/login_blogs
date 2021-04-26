class UsersController < ApplicationController
  # skip_before_action :login_required, only: [:new, :create, :show]

    #before_action :set_user only: [:show, :edit]

  def show
       @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
        redirect_to user_path(@user.id)
    else
      render :new
    end

  end


  # def show
  #   @user = User.find(user_params[:id])
  # end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)

end
end








  # def create
  #   @post = Post.new(post_params)
  #     if @post.save
  #       # 一覧画面へ遷移して"I have created a blog!"とメッセージを表示します。
  #    redirect_to posts_path, notice: "I have created a post"
  #    #redirect_to new_blog_path
  #  else
  #    render :new
  #  end
  #   # renvoi une nvlle page pour poster a nouveau un blog redirect_to
  #   #"/blogs/new"= redirect_to new_blog_path
  #   #redirect_to "/blogs/new"
  #   #redirect_to new_blog_path
  # end
