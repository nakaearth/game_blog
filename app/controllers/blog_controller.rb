class BlogController < ApplicationController
  def index
    begin
        @skin_id=1
        @blogger = Blogger.find(params[:id],:include => :blog_setting)
        @blogger_setting = @blogger.blog_setting
        @entries = Entry.where("blogger_id=?",@blogger.id).public_entries.latest
    rescue ActiveRecord::RecordNotFound => e
       # 404ページへ
    end
  end

  def show
    @skin_id=1
    @blogger = Blogger.find(params[:id])
    @entry = Entry.find(params[:entry_id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @entry }
    end
  end

end
