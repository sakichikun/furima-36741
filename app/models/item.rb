class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :burden
  belongs_to :area
  belongs_to :scheduled_delivery

  belongs_to :user
  #has_one :purchase, dependent: :destroy
  has_one_attached :image

  
  validates :image, presence: true
  validates :name, presence: true
  validates :text, presence: true
  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :condition_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :burden_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :area_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :scheduled_delivery_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :price, presence: true, numericality: { with: /\A[0-9]+\z/, message: "is invalid. Input half-width characters"}
  validates_inclusion_of :price, in: 300..9999999, message: "is out of setting range"
end
