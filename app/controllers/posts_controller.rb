class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create, :checked]

  def index
    @posts = Post.order(id: "DESC")
  end

  def create
    post = Post.create(text: params[:content], checked: false, user_id: current_user.id)
    render json:{ post: post }
  end

  def checked
    post = Post.find(params[:id])
    if post.checked 
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end
end
