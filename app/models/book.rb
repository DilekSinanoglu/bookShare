class Book < ApplicationRecord
  validates_presence_of :title, :author

  belongs_to :user
  has_many :comments
  has_many :exchanges
end
