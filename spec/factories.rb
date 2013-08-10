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
    name "History Requirements"
    description "K-6 grades Michigan Schools "
    url "http://michigan.gov/documents/mde/SSGLCE_218368_7.pdf"
    public true
    grade "6"
    subject 'History'
  end


  factory :student do
    name 'milo'
    birth '10-12-2004'
    email 'milo@example.com'
    gender 'male'
    family
  end

  factory :outcome do
    grade_level '6'
    subject 'History'
    description 'American Civil War'
    due_date '08-15-2013'
    student
  end

end

