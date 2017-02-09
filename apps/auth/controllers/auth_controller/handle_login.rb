module Auth::Controllers::AuthController
  class HandleLogin
    include Auth::Action

    params do
      required(:login_params).schema do
        required(:email).filled(:str?)
        required(:password).filled(:str?)
      end
    end

    def call(params)
      p params
      redirect_to '/admin/'
    end
  end
end
