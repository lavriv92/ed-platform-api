require 'jwt'

module Auth::Controllers::SessionsController
  class Create
    include Auth::Action

    accept :json

    params do
      required(:email).filled(:str?)
      required(:password).filled(:str?)
    end

    def valid_password?
      Bcrypt::Password::new(user.password_hash) == params[:password]
    end

    def login
      user = UserRepository.new.find_by_username(params[:email])
      halt 403 unless valid_password?(user)

      token_options = { iss: ENV[:HOST], exp: 804700, user_id: user.id, audience: 'email' }
      token = JWT.encode(token_options, ENV['AUTH_SESSION_SECRET'], algorithm: 'HS256')
      self.status = 200
      self.body = {token: token, user: user}.to_json
    end

    def call(params)
      unless params.valid?
        self.body = params.errors.to_json
        halt 422
      end
      login_params
    end
  end
end
