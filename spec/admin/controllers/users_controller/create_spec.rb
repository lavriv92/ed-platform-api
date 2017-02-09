require 'spec_helper'
require_relative '../../../../apps/admin/controllers/users_controller/create'

describe Admin::Controllers::UsersController::Create do
  let(:action) { Admin::Controllers::UsersController::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
