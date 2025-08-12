class Book < ApplicationRecord
    has_many :orders, class_name: "Book::Order", dependent: :destroy
    has_many :reviews, class_name: "Book::Review", dependent: :destroy
    validates :title, presence: true
    validates :author, presence: true
end