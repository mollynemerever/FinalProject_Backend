class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :full_name, :image, :join_year, :industry
  has_many :userbooks
  #has_many :books, through: :userbooks

end
