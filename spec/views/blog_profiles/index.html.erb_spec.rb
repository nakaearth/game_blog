require 'spec_helper'

describe "blog_profiles/index.html.erb" do
  before(:each) do
    assign(:blog_profiles, [
      stub_model(BlogProfile,
        :name => "Name",
        :blog_name => "Blog Name",
        :skin_id => 1,
        :blogger_id => 1
      ),
      stub_model(BlogProfile,
        :name => "Name",
        :blog_name => "Blog Name",
        :skin_id => 1,
        :blogger_id => 1
      )
    ])
  end

  it "renders a list of blog_profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Blog Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
