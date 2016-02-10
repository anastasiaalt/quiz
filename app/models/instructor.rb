class Instructor < ActiveRecord::Base
  has_secure_password

  has_many :quizzes
  has_many :cohorts
end