class Project < ApplicationRecord
  has_many :pictures, dependent: :destroy
  has_many :categories, dependent: :destroy
end
