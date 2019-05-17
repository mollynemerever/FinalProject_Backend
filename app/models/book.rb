class Book < ApplicationRecord
  has_many :userbooks
  has_many :bookcommentusers
end
