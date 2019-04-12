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
    name { "MyString" }
  end

  factory :regional_manager do

  end

  factory :user do

  end

end
