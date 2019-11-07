class PostsController < ApplicationController
  def show
    @post = Post.find_by(id: params[:id])
  end

  def create
    @post = Post.new(content: params[:content])
    @post.save
    if @post.save
      flash[:notice] = "つぶやきました"
      redirect_to("/")
    else
      redirect_to("/")
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    @post.save
    if @post.save
      flash[:notice] = "編集しました"
      redirect_to("/posts/#{@post.id}")
    else
      render("/posts/#{@post.id}/edit")
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "削除しました"
    redirect_to("/")
  end
end
