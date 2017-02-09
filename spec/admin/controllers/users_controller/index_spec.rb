require 'spec_helper'
require_relative '../../../../apps/admin/controllers/users_controller/index'

describe Admin::Controllers::UsersController::Index do
  let(:action) { Admin::Controllers::UsersController::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
