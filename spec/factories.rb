FactoryGirl.define do

  factory :family do
    name "Elias"
    motto "Let Dad sleep"
  end

  factory :educator do
    username "mom"
    email "mom@example.com"
    password "password"
    password_confirmation "password"
    profile "Likes History, Math, Science and Writing."
    family
  end

  factory :resource do


    public true
  end

  factory :student do

  end

  factory :outcome do
  end


end

