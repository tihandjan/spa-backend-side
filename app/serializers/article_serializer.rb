class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :summary, :description
  has_many :pictures
  has_many :categories
end
