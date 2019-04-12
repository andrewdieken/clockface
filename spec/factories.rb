FactoryBot.define do
  factory :employee do
    first_name { "MyString" }
    last_name { "MyString" }
    branch { nil }
  end

  factory :branch do
    name { "MyString" }
  end

  factory :regional_manager do
    
  end

  factory :user do
    
  end

end
