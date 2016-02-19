class Movie < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :rating, inclusion: {in: 0..10}
end