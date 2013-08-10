require 'spec_helper'

describe Resource do
  before do
    @resource = FactoryGirl.create(:resource)
    @outcome = FactoryGirl.create(:outcome)
    @student = FactoryGirl.create(:student)
    @educator = FactoryGirl.create(:educator)
  end

 it "can "
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