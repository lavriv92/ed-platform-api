module Auth::Views::AuthController
  class HandleLogin
    include Auth::View
    template 'auth_controller/login'
  end
end
