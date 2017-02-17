class Project < ApplicationRecord
  has_many :pictures
  has_many :categories
end
