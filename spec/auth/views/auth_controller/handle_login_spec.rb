require 'spec_helper'
require_relative '../../../../apps/auth/views/auth_controller/handle_login'

describe Auth::Views::AuthController::HandleLogin do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/auth/templates/auth_controller/handle_login.html.erb') }
  let(:view)      { Auth::Views::AuthController::HandleLogin.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    skip 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
