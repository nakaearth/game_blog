class CommentsController < ApplicationController
  def new
    
  end
  def create
    entry = Entry.find params[:entry_id]
    @created_commment = entry.comments.create params[:comment]
    if (@created_commment)
       @comment = Comment.find :last
       @comment = @created_commment
    end

    render :update do |page|
      page.insert_html :top, 'comment_list', :partial => 'comment_list'
      page.visual_effect :highlight,"comment_list",:duration => 1
    end

  end
end
