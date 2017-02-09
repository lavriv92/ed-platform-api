require 'spec_helper'
require_relative '../../../../apps/auth/views/auth_controller/login'

describe Auth::Views::AuthController::Login do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/auth/templates/auth_controller/login.html.erb') }
  let(:view)      { Auth::Views::AuthController::Login.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    skip 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
