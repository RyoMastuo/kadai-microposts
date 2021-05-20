class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favorites, class_name: 'Favorite', foreign_key: 'micropost_id'
  
  
  validates :content, presence: true, length: { maximum: 255 }
end
