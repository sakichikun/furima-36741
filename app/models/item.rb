class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :burden
  belongs_to :area
  belongs_to :scheduled_delivery

  belongs_to :user
  has_one :purchase, dependent: :destroy
  has_one_attached :image

  validates :name, presence: true
  validates :text, presence: true
  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :condition_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :burden_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :area_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :scheduled_delivery_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :price, presence: true, format: {with: /\A[0-9]+\z/i, message: "is invalid. Input half-width characters"}, 
              numericality: { only_integer: true, grater_than: 300, less_than: 9999999 , message: "is out of setting range"}

end
