class Question < ActiveRecord::Base
  belongs_to :quiz
  belongs_to :answer
end