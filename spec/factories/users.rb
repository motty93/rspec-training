FactoryBot.define do
  factory :user do
    name { 'user' }
    age { 100 }
  end

  factory :taro, class: User do
    name { "たろう" }
    age { 11 }
  end

  factory :yuki, class: User do
    name { "ユウキ" }
    age { 20 }
  end
end
