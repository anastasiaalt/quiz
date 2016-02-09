class Question < ActiveRecord::Base
  belongs_to :quiz

  delegate :instructor, to: :quiz
  
  has_many :options

  has_many :submissions, through: :options

end