class Project < ApplicationRecord
  has_many :pictures, dependent: :destroy
  has_many :categories, dependent: :destroy
  validates :title, presence: true
  validates :summary, presence: true
  validates :description, presence: true
end
