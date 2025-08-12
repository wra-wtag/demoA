class Book::Order < ApplicationRecord
    validates :quantity, presence: true
    validates :quantity, numericality: { only_integer: true, greater_than: 0 }
end
