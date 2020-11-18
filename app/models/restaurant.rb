class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    validates :address, presence: true 
    validates :name, presence: true
    validates :category, presence: true
    CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
    validates :category, inclusion: { in: CATEGORIES}
end
