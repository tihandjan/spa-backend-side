class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :summary, :description, :site_url, :realise, :name, :technology
  has_many :pictures
  has_many :categories
end
