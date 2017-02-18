class Article < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :pictures, dependent: :destroy
  validates :title, presence: true
  validates :summary, presence: true
  validates :description, presence: true
end
