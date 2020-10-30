class Comment < ApplicationRecord
  
  validates_presence_of :title, :content
  belongs_to :book

  scope :apprend, -> {where(status: true)}
end
