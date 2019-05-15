class Bookcommentuser < ApplicationRecord
  belongs_to :book
  belongs_to :user
  belongs_to :comment 
end
