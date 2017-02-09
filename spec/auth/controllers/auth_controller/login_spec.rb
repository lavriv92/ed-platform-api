require 'spec_helper'
require_relative '../../../../apps/auth/controllers/auth_controller/login'

describe Auth::Controllers::AuthController::Login do
  let(:action) { Auth::Controllers::AuthController::Login.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
