class Article < ApplicationRecord
  has_many :categories
  has_many :pictures
end
