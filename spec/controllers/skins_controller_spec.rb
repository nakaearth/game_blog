require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe SkinsController do

  def mock_skin(stubs={})
    @mock_skin ||= mock_model(Skin, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all skins as @skins" do
      Skin.stub(:all) { [mock_skin] }
      get :index
      assigns(:skins).should eq([mock_skin])
    end
  end

  describe "GET show" do
    it "assigns the requested skin as @skin" do
      Skin.stub(:find).with("37") { mock_skin }
      get :show, :id => "37"
      assigns(:skin).should be(mock_skin)
    end
  end

  describe "GET new" do
    it "assigns a new skin as @skin" do
      Skin.stub(:new) { mock_skin }
      get :new
      assigns(:skin).should be(mock_skin)
    end
  end

  describe "GET edit" do
    it "assigns the requested skin as @skin" do
      Skin.stub(:find).with("37") { mock_skin }
      get :edit, :id => "37"
      assigns(:skin).should be(mock_skin)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created skin as @skin" do
        Skin.stub(:new).with({'these' => 'params'}) { mock_skin(:save => true) }
        post :create, :skin => {'these' => 'params'}
        assigns(:skin).should be(mock_skin)
      end

      it "redirects to the created skin" do
        Skin.stub(:new) { mock_skin(:save => true) }
        post :create, :skin => {}
        response.should redirect_to(skin_url(mock_skin))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved skin as @skin" do
        Skin.stub(:new).with({'these' => 'params'}) { mock_skin(:save => false) }
        post :create, :skin => {'these' => 'params'}
        assigns(:skin).should be(mock_skin)
      end

      it "re-renders the 'new' template" do
        Skin.stub(:new) { mock_skin(:save => false) }
        post :create, :skin => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested skin" do
        Skin.stub(:find).with("37") { mock_skin }
        mock_skin.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :skin => {'these' => 'params'}
      end

      it "assigns the requested skin as @skin" do
        Skin.stub(:find) { mock_skin(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:skin).should be(mock_skin)
      end

      it "redirects to the skin" do
        Skin.stub(:find) { mock_skin(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(skin_url(mock_skin))
      end
    end

    describe "with invalid params" do
      it "assigns the skin as @skin" do
        Skin.stub(:find) { mock_skin(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:skin).should be(mock_skin)
      end

      it "re-renders the 'edit' template" do
        Skin.stub(:find) { mock_skin(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested skin" do
      Skin.stub(:find).with("37") { mock_skin }
      mock_skin.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the skins list" do
      Skin.stub(:find) { mock_skin }
      delete :destroy, :id => "1"
      response.should redirect_to(skins_url)
    end
  end

end
