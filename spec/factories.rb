FactoryGirl.define do

  factory :user do
    username "mom"
    email "mom@example.com"
    password "password"
    password_confirmation "password"
  end

  factory :resource do
    room_type "Vulcan"
    room_number 3
  end

  factory :flight do
    name "su1300"
    docking_hour Time.now
    launching_hour Time.now
  end

end

