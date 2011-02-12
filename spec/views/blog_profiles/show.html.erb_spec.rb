require 'spec_helper'

describe "blog_profiles/show.html.erb" do
  before(:each) do
    @blog_profile = assign(:blog_profile, stub_model(BlogProfile,
      :name => "Name",
      :blog_name => "Blog Name",
      :skin_id => 1,
      :blogger_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Blog Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
