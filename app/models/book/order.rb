class Book::Order < ApplicationRecord
    belongs_to :book
    validates :quantity, presence: true
    validates :quantity, numericality: { only_integer: true, greater_than: 0 }
end
