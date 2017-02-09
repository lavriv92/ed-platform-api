module Admin::Controllers::UsersController
  class Index
    include Admin::Action

    expose :users

    def call(params)
      @users = UserRepository.new.all
    end
  end
end
