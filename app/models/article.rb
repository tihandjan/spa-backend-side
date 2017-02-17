class Article < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :pictures, dependent: :destroy
end
