class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :username, :email, :password
  has_many :tweets

  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods

end
