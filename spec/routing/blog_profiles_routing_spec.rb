require "spec_helper"

describe BlogProfilesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/blog_profiles" }.should route_to(:controller => "blog_profiles", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/blog_profiles/new" }.should route_to(:controller => "blog_profiles", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/blog_profiles/1" }.should route_to(:controller => "blog_profiles", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/blog_profiles/1/edit" }.should route_to(:controller => "blog_profiles", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/blog_profiles" }.should route_to(:controller => "blog_profiles", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/blog_profiles/1" }.should route_to(:controller => "blog_profiles", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/blog_profiles/1" }.should route_to(:controller => "blog_profiles", :action => "destroy", :id => "1")
    end

  end
end
