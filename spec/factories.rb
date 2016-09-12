FactoryGirl.define do
  factory :project_description do
  end
  factory :slideshow_image do
    description 'hello'
    row_order 1
  end
  factory :project_gallery_image do
    association :project
  end
  factory :project_main_image do
    association :project
  end
  factory :category do
    name 'Retail'
  end

  factory :project do
    sequence :name do |n|
      "Project#{n}"
    end
    location 'A nice place'
    size 123
    published? true

    factory :unpublished_project do
      published? false
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
