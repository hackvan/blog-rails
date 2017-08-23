class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]

  def index
    @posts = Post.order('created_at desc').limit(10)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to posts_path, flash: { success: 'El post ha sido creado con éxito.' }
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path, flash: { success: 'El post ha sido actualizado con éxito.' }
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, flash: { success: 'El post ha sido eliminado con éxito.' }
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body)
    end
end
