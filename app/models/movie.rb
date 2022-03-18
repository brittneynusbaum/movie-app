class Movie < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { minimum: 2 }
  validates :year, length: { in: 4.. 4 }
  validates :director, presence: true
  validates :plot, length: { in: 10.. 500 }
end
