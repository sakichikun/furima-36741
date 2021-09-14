class Purchase < ApplicationRecord
  belongs_to :area

  belongs_to :user
  belongs_to :item
  has_one :address
end
