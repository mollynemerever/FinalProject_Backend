class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :image, :description, :googleId
  has_many :userbooks
  has_many :users, through: :userbooks
end
