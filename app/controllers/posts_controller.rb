class PostsController < ApplicationController
    before_filter :authenticate_user!, :except => [:show, :index]
    def index
        @posts = Post.all
    end
    
    def show
        @post = Post.find(params[:id])
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(params[:post])
        
        if @post.save
            redirect_to posts_path, :notice => "Nice one. Way to roast that poast!"
        else
            render "new"
        end
    end
    
    def edit
        @post = Post.find(params[:id])
    end
    
    def update
        @post = Post.find(params[:id])
        if @post.update_attributes(params[:post])
            redirect_to posts_path, :notice => "Nice one. Way to roast that poast!"
        else
            render "edit"
        end
    end
    
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path, :notice => "That poast is toast!"
    end
end
