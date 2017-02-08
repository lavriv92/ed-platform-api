require 'spec_helper'
require_relative '../../../../apps/admin/views/admin_home_controller/index'

describe Admin::Views::AdminHomeController::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/admin/templates/admin_home_controller/index.html.erb') }
  let(:view)      { Admin::Views::AdminHomeController::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    skip 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
