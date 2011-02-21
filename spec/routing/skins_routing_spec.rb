require "spec_helper"

describe SkinsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/skins" }.should route_to(:controller => "skins", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/skins/new" }.should route_to(:controller => "skins", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/skins/1" }.should route_to(:controller => "skins", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/skins/1/edit" }.should route_to(:controller => "skins", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/skins" }.should route_to(:controller => "skins", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/skins/1" }.should route_to(:controller => "skins", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/skins/1" }.should route_to(:controller => "skins", :action => "destroy", :id => "1")
    end

  end
end
