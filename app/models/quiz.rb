class Quiz < ActiveRecord::Base
  belongs_to :instructor

  has_many :questions
  accepts_nested_attributes_for :questions, reject_if: proc { 
    |q| q[:ask].blank? 
  }

  has_many :options, through: :questions

  has_many :submissions, through: :options
end