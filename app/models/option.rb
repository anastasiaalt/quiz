class Option < ActiveRecord::Base
  belongs_to :question

  has_many :submissions

  delegate :quiz, to: :question
end

#Similar to a "belongs to through", which doesn't really exist