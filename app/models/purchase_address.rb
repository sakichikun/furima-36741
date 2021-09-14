class PurchaseAddress
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :postal_code, :area_id, :city, :house_number, :building, :phone_number

  with_options presence: true do
    validates :user_id
    validates :item_id

    validates :area_id, numericality: { other_than: 1 , message: "can't be blank"} 
    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :city
    validates :house_number
    validates :phone_number, numericality: { with: /\A[0-9]+\z/, message: "is invalid. Input only number"}
    validates :phone_number, numericality: { with: /\A\d{10,11}\z/, message: "is too short"}
  end

  def save
    purchase = Purchase.create(user_id: user_id, item_id: item_id)
    Address.create(postal_code: postal_code, area_id: area_id, house_number: house_number, building: building, phone_number: phone_number, purchase_id: purchase.id)
  end
end