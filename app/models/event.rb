class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :themes

  has_many :photos
  has_many :registration, dependent: :destroy

  has_many :guests, through: :registration, source: :user

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500}
end
