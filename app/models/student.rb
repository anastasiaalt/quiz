class Student < ActiveRecord::Base
  has_secure_password
  
  has_many :submissions
  has_many :chosen_options, through: :submissions, source: :option

  # this is like has_many :options, through: :submissions,
  # but it renames student.options to student.chosen_options

  belongs_to :cohort

  def generate_token
    self.token = SecureRandom.urlsafe_base64(nil, false)
  end
end