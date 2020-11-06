class Work < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :app_name, presence: true
  validates :url,      presence: true
  validates :text,     presence: true
end
