class Instructor < ActiveRecord::Base
  has_secure_password

  has_many :quizzes
  has_many :cohorts

  def generate_token
    self.token = SecureRandom.urlsafe_base64(nil, false)
  end
end