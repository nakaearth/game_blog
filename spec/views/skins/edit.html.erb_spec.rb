require 'spec_helper'

describe "skins/edit.html.erb" do
  before(:each) do
    @skin = assign(:skin, stub_model(Skin,
      :title => "MyString"
    ))
  end

  it "renders the edit skin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => skin_path(@skin), :method => "post" do
      assert_select "input#skin_title", :name => "skin[title]"
    end
  end
end
