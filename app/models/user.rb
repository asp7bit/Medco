class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :password, :password_confirmation, :slug, :unit_kerja
  has_secure_password
  
  validates :first_name, :presence => true, :format => {:with => /[a-zA-Z\s]+$/}
  validates :last_name, :presence => true, :format => {:with => /[a-zA-Z\s]+$/}
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  
  #before_save :create_remember_token

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
