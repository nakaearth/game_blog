class BlogProfilesController < ApplicationController
  # GET /blog_profiles
  # GET /blog_profiles.xml
  def index
    @blog_profiles = BlogProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @blog_profiles }
    end
  end

  # GET /blog_profiles/1
  # GET /blog_profiles/1.xml
  def show
    begin
      @blogger = current_blogger
      @blog_profile = BlogProfile.find(params[:id])
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @blog_profile }
      end
    rescue  ActiveRecord::RecordNotFound =>e
      @blog_profile = BlogProfile.new
      respond_to do |format|
        format.html { render :action => "new" }
        end
      end
   
  end

  # GET /blog_profiles/new
  # GET /blog_profiles/new.xml
  def new
    @blog_profile = BlogProfile.new
    @blogger = current_blogger
    @blog_profile.blogger_id = @blogger.id
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @blog_profile }
    end
  end

  # GET /blog_profiles/1/edit
  def edit
    @blogger = current_blogger
    @blog_profile = BlogProfile.find(params[:id])
  end

  # POST /blog_profiles
  # POST /blog_profiles.xml
  def create
    @blog_profile = BlogProfile.new(params[:blog_profile])
    respond_to do |format|
      if @blog_profile.save
        format.html { redirect_to(@blog_profile, :notice => 'Blog profile was successfully created.') }
        format.xml  { render :xml => @blog_profile, :status => :created, :location => @blog_profile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @blog_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /blog_profiles/1
  # PUT /blog_profiles/1.xml
  def update
    @blog_profile = BlogProfile.find(params[:id])

    respond_to do |format|
      if @blog_profile.update_attributes(params[:blog_profile])
        format.html { redirect_to(@blog_profile, :notice => 'Blog profile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @blog_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_profiles/1
  # DELETE /blog_profiles/1.xml
  def destroy
    @blog_profile = BlogProfile.find(params[:id])
    @blog_profile.destroy

    respond_to do |format|
      format.html { redirect_to(blog_profiles_url) }
      format.xml  { head :ok }
    end
  end
end
