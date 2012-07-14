class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :password_digest, :slug, :unit_kerja
  
  has_secured_password
  
  validates :first_name, :presence => true, :format => {:with => /[a-zA-Z\s]+$/}
  validates :last_name, :presence => true, :format => {:with => /[a-zA-Z\s]+$/}
  validates :password_digest, :presence => true
  
end
