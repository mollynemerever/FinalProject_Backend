class Book < ApplicationRecord
  belongs_to :userbooks
  has_many :bookcommentusers
end
