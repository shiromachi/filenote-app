class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :filenotes
  has_many :works
  validates :name, presence: true
end
