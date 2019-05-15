class User < ApplicationRecord
  has_many :userbooks
  has_many :userfollowerrelationships
end
