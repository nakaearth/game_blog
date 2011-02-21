require 'spec_helper'

describe "skins/index.html.erb" do
  before(:each) do
    assign(:skins, [
      stub_model(Skin,
        :title => "Title"
      ),
      stub_model(Skin,
        :title => "Title"
      )
    ])
  end

  it "renders a list of skins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
