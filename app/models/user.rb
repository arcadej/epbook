class User < ActiveRecord::Base
  attr_accessible :name, :password_digest, :password, :password_confirmation, :role_id, :email
has_secure_password 
validates_presence_of :password, :on => :create 
belongs_to :role
end
