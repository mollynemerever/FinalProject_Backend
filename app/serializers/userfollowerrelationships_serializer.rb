class UserfollowerrelationshipsSerializer < ActiveModel::Serializer
  attributes :user_id, :following_id
  belongs_to :user
end
