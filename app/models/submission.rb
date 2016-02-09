class Submission < ActiveRecord::Base
  belongs_to :option
  belongs_to :student

  delegate :question, to: :option
end