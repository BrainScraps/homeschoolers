require 'spec_helper'

describe "resources/edit" do
  before(:each) do
    @resource = assign(:resource, stub_model(Resource,
      :index => "MyString",
      :new => "MyString",
      :create => "MyString",
      :show => "MyString",
      :destroy => "MyString",
      :edit => "MyString",
      :update => "MyString"
    ))
  end

  it "renders the edit resource form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", resource_path(@resource), "post" do
      assert_select "input#resource_index[name=?]", "resource[index]"
      assert_select "input#resource_new[name=?]", "resource[new]"
      assert_select "input#resource_create[name=?]", "resource[create]"
      assert_select "input#resource_show[name=?]", "resource[show]"
      assert_select "input#resource_destroy[name=?]", "resource[destroy]"
      assert_select "input#resource_edit[name=?]", "resource[edit]"
      assert_select "input#resource_update[name=?]", "resource[update]"
    end
  end
end
