class HomeController < ApplicationController

  def index
    @posts_on_blog = Post.all
  end

  def about
  end

  # def brian
  #   redirect_to("http://cubicalweb.com")
  # end
end
