require 'spec_helper'

describe Resource do
  before do

  pending "add some examples to (or delete) #{__FILE__}"
end


before do
  @reservation = FactoryGirl.create(:reservation)
  @flight = FactoryGirl.create(:flight)
  @quarter = FactoryGirl.create(:quarter)
  @weekday = FactoryGirl.create(:weekday)
end