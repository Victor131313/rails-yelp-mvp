class Review < ApplicationRecord
    belongs_to :restaurant
    validates :content, presence: true
    #RATES = (0..5)
    #validates :rating, :inclusion { in: RATES }
    #validates :rating, inclusion: { in: RATES }
    validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
