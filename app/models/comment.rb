class Comment < ApplicationRecord
  belongs_to :Article
  belongs_to :News
  belongs_to :Event
end
