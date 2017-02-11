require 'bcrypt'

class User < Hanami::Entity

  def initialize(params)
    params[:password] = BCrypt::Password.create(params[:password])
    super(params)
  end
end
