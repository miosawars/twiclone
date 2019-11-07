class HomeController < ApplicationController
  def top
    @posts = Post.all.order(created_at: :desc)
    @post = Post.new
  end


end
