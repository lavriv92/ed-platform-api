require 'jwt'

module Authentication

  def self.included(base)
    base.class_eval do
      before :authenticate!
      expose :current_user
    end
  end

  def authenticate!
    halt 401 unless authenticated?
  end

  def current_user
    @current_user ||= authenticate_user
  end

  def authenticated?
    !!current_user
  end

  def authenticate_user
    jwt = JWT.decode()
    user = UserRepository.find(jwt.user_id)
    if user && !user.revoked
      return @current_user = user
    end
  end
end
