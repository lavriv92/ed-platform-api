module Admin::Controllers::UsersController
  class Create
    include Admin::Action
    # include Admin::View

    # template 'users/new'
    expose :user

    params do
      required(:user).schema do
        required(:email).filled(:str?)
        required(:password).filled(:str?)
        required(:password_confirmation).filled(:str?)
        required(:first_name).filled(:str?)
        required(:last_name).filled(:str?)
      end
    end

    def call(params)
      if params.valid?
        UserRepository.new.create(params[:user])
        redirect_to routes.users_path
      else
        p "redirect with error"
        self.status = 422
      end
    end
  end
end
