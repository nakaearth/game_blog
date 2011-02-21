require 'spec_helper'

describe "skins/show.html.erb" do
  before(:each) do
    @skin = assign(:skin, stub_model(Skin,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
