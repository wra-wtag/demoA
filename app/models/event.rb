class Event < ApplicationRecord
    has_many :comments
    has_and_belongs_to_many :books
end
