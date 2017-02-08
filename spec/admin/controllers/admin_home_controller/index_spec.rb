require 'spec_helper'
require_relative '../../../../apps/admin/controllers/admin_home_controller/index'

describe Admin::Controllers::AdminHomeController::Index do
  let(:action) { Admin::Controllers::AdminHomeController::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
