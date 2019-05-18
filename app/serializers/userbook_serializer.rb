class UserbookSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :book_id, :read_status, :user, :book
  belongs_to :book
  belongs_to :user
end
