FactoryBot.define do
  factory :item do
    name {"hoge"}
    text {Faker::Lorem.sentence}
    category_id {3}
    condition_id {2}
    burden_id {3}
    area_id {4}
    scheduled_delivery_id {2}
    price { 5000 }

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
