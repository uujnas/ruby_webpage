class PostsController < ApplicationController
    before_action :set_post, only:[:show, :edit, :update, :destroy]

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def show
        @post = Post.find(params[:id])
    end

    def create
        @post = Post.new(post_params)
    
        if @post.save
         redirect_to posts_new_path,notice: "Your post is save"
        else
         render `new`
       end
     end

     def destroy
        @post.destroy
        redirect_to posts_path, notice: "Your post waas deleted"
    end


     def update
        if @post.update(post_params)
            redirect_to @post, notice:"Successfully updated"
        else
            render :edit, alert:"Your post wasn't updated"
        end
    end

    def set_post
        @post = Post.find(params[:id])
    end

        private

        def post_params
            params.require(:post).permit(:title, :body, :file)
           end
    end


