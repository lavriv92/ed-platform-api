require 'spec_helper'
require_relative '../../../../apps/auth/views/sessions_controller/create'

describe Auth::Views::SessionsController::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/auth/templates/sessions_controller/create.html.erb') }
  let(:view)      { Auth::Views::SessionsController::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    skip 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
