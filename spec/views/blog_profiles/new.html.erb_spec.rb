require 'spec_helper'

describe "blog_profiles/new.html.erb" do
  before(:each) do
    assign(:blog_profile, stub_model(BlogProfile,
      :name => "MyString",
      :blog_name => "MyString",
      :skin_id => 1,
      :blogger_id => 1
    ).as_new_record)
  end

  it "renders new blog_profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blog_profiles_path, :method => "post" do
      assert_select "input#blog_profile_name", :name => "blog_profile[name]"
      assert_select "input#blog_profile_blog_name", :name => "blog_profile[blog_name]"
      assert_select "input#blog_profile_skin_id", :name => "blog_profile[skin_id]"
      assert_select "input#blog_profile_blogger_id", :name => "blog_profile[blogger_id]"
    end
  end
end
