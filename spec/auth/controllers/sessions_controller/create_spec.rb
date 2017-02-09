require 'spec_helper'
require_relative '../../../../apps/auth/controllers/sessions_controller/create'

describe Auth::Controllers::SessionsController::Create do
  let(:action) { Auth::Controllers::SessionsController::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
