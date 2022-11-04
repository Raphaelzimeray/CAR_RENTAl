class Car < ApplicationRecord
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :brand, presence: true
  validates :year, presence: true
  validates :engine, presence: true
  validates :color, presence: true
  validates :car_type, presence: true
  validates :model, presence: true
  validates :price, presence: true
end
