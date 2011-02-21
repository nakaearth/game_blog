class SkinsController < ApplicationController
  # GET /skins
  # GET /skins.xml
  def index
    @blogger = current_blogger
    @skins = Skin.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @skins }
    end
  end

  # GET /skins/1
  # GET /skins/1.xml
  def show
    @blogger = current_blogger
    @skin = Skin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @skin }
    end
  end

  # DELETE /skins/1
  # DELETE /skins/1.xml
  def destroy
    @skin = Skin.find(params[:id])
    @skin.destroy

    respond_to do |format|
      format.html { redirect_to(skins_url) }
      format.xml  { head :ok }
    end
  end

  def select_skin
    @blogger = current_blogger
    @skin = Skin.find(params[:id])
    @profile = BlogProfile.find(:first,:conditions=>["blogger_id=?",@blogger.id])
    @profile.update_attribute(:skin_id, @skin.id)
    render :update  do  |page|
      page.insert_html :top, 'selected_skin', :partial=>'selected_skin'
    end
  end

end
