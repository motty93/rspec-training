FactoryBot.define do
  factory :taro, class: User do
    name { "たろう" }
    age { 11 }
  end

  factory :yuki, class: User do
    name { "ユウキ" }
    age { 20 }
  end
end
