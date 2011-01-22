class BloggerController < ApplicationController
  def show
    @blogger = current_blogger
  end

  def edit
    @blogger = current_blogger
  end

  def update
    @blogger = Blogger.new
    
  end

end
