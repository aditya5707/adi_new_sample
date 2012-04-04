class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_many :posts
  has_secure_password

#  before_save :create_remember_token

  validates :name, :presence => "true", :length => {:maximum => 10}
  valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence => "true", :format => {:with => valid_email_regex}, :uniqueness => "true"
  validates :password, :length => { :minimum => 6 }
  validates :password_confirmation, :presence => "true"

#  private
#  def create_remember_token
#    self.remember_token = SecureRandom.urlsafe_base64
#  end


end
