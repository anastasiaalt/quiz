class Quiz < ActiveRecord::Base
  belongs_to :instructor

  has_many :students
  has_many :questions

  has_many :answers, through: :questions
  has_many :options, through: :questions
end