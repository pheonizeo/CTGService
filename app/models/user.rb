require 'digest/sha2'

class User < ActiveRecord::Base

  validates_presence_of :name
  validates_uniqueness_of :name

  attr_accessor :password_confirmation
  validates_confirmation_of       :password

  validate :password_must_be_present

 # class << self
    def self.authenticate(name, password)
       user = self.find_by_name(name)
        if user
          expected_password = encrypted_password(password,user.salt)
          if user.hashed_password != expected_password
            user =nil
          end
        end
      user
    end

    def encrypt_password(password, salt)
      Digest::SHA2.hexdigest(password + "wibble" + salt)
    end
  #end

# 'password' is a virtual attribute
  def password=(password)
    @password = password


    if password.present?
      generate_salt
      self.hashed_password = self.class.encrypt_password(password, salt)
    end
  end
         def password
           @password
         end

  private
  def password_must_be_present
    errors.add(:password, "Missing password") unless hashed_password.present?
  end

  def generate_salt
    self.salt= self.object_id.to_s

  end
end

