require 'bcrypt'
require 'hanami/model'

class User < Hanami::Entity

  # def initialize(params)
  #   params[:password] = BCrypt::Password.create(params[:password])
  #   super(params)
  # end

  # def password
  #   @password = BCrypt::Password.new(self.password_hash)
  # end
end
