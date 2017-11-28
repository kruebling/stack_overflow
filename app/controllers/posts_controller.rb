class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post successfully added!"
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @answers = @post.answers
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "Post successfully updated!"
      redirect_to  post_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Post successfully deleted!"
    redirect_to posts_path
  end

  def upvote
    @post = Post.find(params[:id])
    @post.upvote_by current_user
    @posts = Post.all
    redirect_to post_path
  end

  def downvote
    @post = Post.find(params[:id])
    @post.downvote_by current_user
    @posts = Post.all
    redirect_to post_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :user_id)
    end
  end
