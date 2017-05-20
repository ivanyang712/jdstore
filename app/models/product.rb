class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  # has_many :photos
  # accepts_nested_attributes_for :photos
  belongs_to :category
  validates :category_id, presence: true
  acts_as_list
  has_many :favorites
  has_many :users, through: :favorites, source: :user
  scope :recent, -> { order("created_at DESC") }
end
