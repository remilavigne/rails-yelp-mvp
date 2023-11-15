class Restaurant < ApplicationRecord
# validates :content, presence: true
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian']}
  has_many :reviews, dependent: :destroy
end
