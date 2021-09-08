class Book < ApplicationRecord
  has_many :likes, dependet: :destory
end
