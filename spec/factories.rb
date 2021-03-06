FactoryBot.define do
  factory :interim do
    start { "2019-04-12 12:13:46" }
    stop { "2019-04-12 12:13:46" }
    shift { nil }
  end


  factory :employee do
    first_name { "MyString" }
    last_name { "MyString" }
    branch { nil }
  end

  factory :shift do
    start { "2019-04-12 10:34:46" }
    stop { "2019-04-12 10:34:46" }
    employee { "" }
  end

  factory :branch do
    sequence(:name) { |i| "branch_#{i}" }
  end

  factory :user do
    sequence(:email) { |i| "user_#{i}@example.com" }
    password { "foobar" }
    password_confirmation { "foobar" }

    trait :regional_manager do
      role { :regional_manager }
    end

    trait :branch_manager do
      role { :branch_manager }
    end
  end

end
