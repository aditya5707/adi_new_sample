class User < ActiveRecord::Base
  attr_accessible :name, :email

  def formatted_email
    "#{@name} <#{@email}>"

  end

  has_many :posts

end
