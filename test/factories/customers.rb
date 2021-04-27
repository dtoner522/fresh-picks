FactoryBot.define do
  factory :customer do
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
    phone_number { 1 }
    address_line_1 { "MyString" }
    address_line_2 { "MyString" }
    postcode { "MyString" }
    order { nil }
  end
end
