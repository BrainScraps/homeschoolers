require 'spec_helper'

describe Resource do
  before do
    @family = FactoryGirl.create(:family)
    @student = FactoryGirl.create(:student)
    @educator = FactoryGirl.create(:educator)
    @outcome = FactoryGirl.create(:outcome)
  end

   it "can be marked private" do
      @resource = FactoryGirl.create(:resource)
      visit resources_edit_path
      fill_in 'public', :with => false
   end

   it "educator can view all thier resourcse public or private" do
     visit my_resources_path
   end
end



# examples:
# it "signs up", :js => true do
#   visit '/'
#   click_link "Sign up"
#   fill_in "Username", :with => @user.username
#   fill_in "Password", :with => @user.password
#   fill_in "Password confirmation", :with => @user.password_confirmation
#   click_button "Sign me up Scotty"
#   expect(page.driver.browser.switch_to.alert.text).to have_content "Thank you for registering"
# end