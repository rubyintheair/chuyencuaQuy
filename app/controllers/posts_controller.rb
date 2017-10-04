class PostsController < ApplicationController
  def new
  end

  def create 
    @post = Post.new(post_params)
    if @post.save 
      redirect_to root_path
    else 
      render "new"
    end 
  end 

  def post_params
    params.require(:post).permit(:title, :section, :content)
  end 

  def health_and_beauty
    @posts = Post.where(section: "Health and Beauty")
  end 

  def programming
    @posts = Post.where(section: "Programming") 
  end 

  def book 
    @posts = Post.where(section: "Book")
  end 

  def eat_and_drink
    @posts = Post.where(section: "Eat and Drink")
  end 

  def other 
    @posts = Post.where(section: "Other")
  end 


end
