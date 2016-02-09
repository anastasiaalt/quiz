class Question < ActiveRecord::Base
  belongs_to :quiz
  belongs_to :answer

  has_one :instructor, through: :quiz
  
  has_many :students, through: :quiz

end