class Question < ActiveRecord::Base
  belongs_to :quiz

  delegate :instructor, to: :quiz
  
  has_many :options
  accepts_nested_attributes_for :options, reject_if: proc { 
    |o| o[:name].blank? 
  }

  has_many :submissions, through: :options
end



