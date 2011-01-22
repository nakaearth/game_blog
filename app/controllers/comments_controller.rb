class CommentsController < ApplicationController
  def new
    
  end
  def create
    entry = Entry.find params[:entry_id]
    entry.comments.create params[:comment]
    redirect_to entry
  end
end
