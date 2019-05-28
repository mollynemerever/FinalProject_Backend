class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :full_name, :image, :join_year, :industry
  has_many :userbooks
  #has_many :books, through: :userbooks

end
