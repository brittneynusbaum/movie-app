class Movie < ApplicationRecord
  validates :title, presence: true
  validates :director, presence: true
  validates :plot, length: { in: 10.. 500 }
end
