class Book < ApplicationRecord
    has_many :orders, class_name: "Book::Order", dependent: :destroy
    has_many :reviews, class_name: "Book::Review", dependent: :destroy
    has_and_belongs_to_many :events
    validates :title, presence: true
    validates :author, presence: true
    after_create :log_new_book

    def log_new_book
        puts "📚 Book '#{self.title}' has been created."
    end
end