module Auth::Controllers::AuthController
  class Login
    include Auth::Action

    expose :login_params

    def call(params)
    end
  end
end
