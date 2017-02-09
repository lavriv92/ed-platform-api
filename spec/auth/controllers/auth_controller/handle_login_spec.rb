require 'spec_helper'
require_relative '../../../../apps/auth/controllers/auth_controller/handle_login'

describe Auth::Controllers::AuthController::HandleLogin do
  let(:action) { Auth::Controllers::AuthController::HandleLogin.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
