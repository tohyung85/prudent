FactoryGirl.define do
  factory :category do
    name "Retail"  
  end

  factory :project do
    sequence :name do |n|
      "Project#{n}"
    end
    location "A nice place"
    size 123
    published? true

    factory :unpublished_project do
      published? true
    end
    association :category
  end

  
  factory :user do
    sequence :email do |n|
      "dummyEmail#{n}@gmail.com"
    end
    password 'secretPassword'
    password_confirmation 'secretPassword'
  end
end
