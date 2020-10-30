class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  before_create :generate_username

  private
  def generate_username
    self.username = self.email.split('@').first
  end


  has_many :books
  has_many :exchanges
end

