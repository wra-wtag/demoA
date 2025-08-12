class AddBookToBookReviews < ActiveRecord::Migration[8.0]
  def change
    add_reference :book_reviews, :book, foreign_key: true
  end
end
