class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :updated_at
end
