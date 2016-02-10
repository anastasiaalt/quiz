class Cohort < ActiveRecord::Base
  belongs_to :instructor

  has_many :students
end