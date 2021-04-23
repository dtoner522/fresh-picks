FactoryBot.define do
  factory :order do
    state { "MyString" }
    name { "MyString" }
    amount { "" }
    checkout_session_id { "MyString" }
    user { nil }
    vegbox { nil }
  end
end
