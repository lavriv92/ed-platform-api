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
      if params.valid?
        redirect_to '/admin/'
      else
        self.status = 401
      end
    end
  end
end
