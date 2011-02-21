require 'spec_helper'

describe "skins/new.html.erb" do
  before(:each) do
    assign(:skin, stub_model(Skin,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new skin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => skins_path, :method => "post" do
      assert_select "input#skin_title", :name => "skin[title]"
    end
  end
end
