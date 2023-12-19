class PostsController < ApplicationController
    before_action :set_post, only: [ :show, :edit, :update, :destroy ]
  def index
        @posts = Post.all
        @post = Post.new
    end
  
    def show
      @post = Post.find(params[:id])
    end
  
    def new
      @post = Post.new
    end
  
    def create
      @post = Post.new(post_params)
      #byebug
      if @post.save
        redirect_to @post, success: 'Стаття успішно створена'
      else
        render 'new', danger: 'Стаття не створена'
      end
    end

    def edit
      @post = Post.find(params[:id])
    end

    def update
      if @post.update(post_params)
      redirect_to @post, success: 'Стаття успішно змінена'
       else
      render 'edit', danger: 'Стаття не змінеа'
    end
    end

    def destroy
      @post.destroy
      redirect_to post_path, success: 'Стаття успішно видалена'
    end

    private

    def set_post
    @post = Post.find(params[:id])
    end
    
    def post_params
      params.require(:post).permit(:title, :summary, :body, :image)
    end
end
  