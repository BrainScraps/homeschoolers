require 'spec_helper'

describe "resources/show" do
  before(:each) do
    @resource = assign(:resource, stub_model(Resource,
      :index => "Index",
      :new => "New",
      :create => "Create",
      :show => "Show",
      :destroy => "Destroy",
      :edit => "Edit",
      :update => "Update"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Index/)
    rendered.should match(/New/)
    rendered.should match(/Create/)
    rendered.should match(/Show/)
    rendered.should match(/Destroy/)
    rendered.should match(/Edit/)
    rendered.should match(/Update/)
  end
end
