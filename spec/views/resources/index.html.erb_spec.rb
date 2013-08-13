require 'spec_helper'

describe "resources/index" do
  before(:each) do
    assign(:resources, [
      stub_model(Resource,
        :index => "Index",
        :new => "New",
        :create => "Create",
        :show => "Show",
        :destroy => "Destroy",
        :edit => "Edit",
        :update => "Update"
      ),
      stub_model(Resource,
        :index => "Index",
        :new => "New",
        :create => "Create",
        :show => "Show",
        :destroy => "Destroy",
        :edit => "Edit",
        :update => "Update"
      )
    ])
  end

  it "renders a list of resources" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Index".to_s, :count => 2
    assert_select "tr>td", :text => "New".to_s, :count => 2
    assert_select "tr>td", :text => "Create".to_s, :count => 2
    assert_select "tr>td", :text => "Show".to_s, :count => 2
    assert_select "tr>td", :text => "Destroy".to_s, :count => 2
    assert_select "tr>td", :text => "Edit".to_s, :count => 2
    assert_select "tr>td", :text => "Update".to_s, :count => 2
  end
end
