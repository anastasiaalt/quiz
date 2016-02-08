class Instructor < ActiveRecord::Base
  has_many :quizes
end