FactoryBot.define do
  factory :purchase_address do
    postal_code { '123-4567' }
    area_id {4}
    city { '東京都' }
    house_number { '1-1' }
    building { '東京ハイツ' }
    phone_number{ '09012345678' }

    association :user
    association :item

  end
end
