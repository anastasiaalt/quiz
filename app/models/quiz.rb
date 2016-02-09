class Quiz < ActiveRecord::Base
  belongs_to :instructor

  has_many :questions

  has_many :options, through: :questions

  has_many :submissions, through: :options
end