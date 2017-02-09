require 'spec_helper'
require_relative '../../../../apps/admin/controllers/users_controller/new'

describe Admin::Controllers::UsersController::New do
  let(:action) { Admin::Controllers::UsersController::New.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
