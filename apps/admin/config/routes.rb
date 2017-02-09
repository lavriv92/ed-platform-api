# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
get '/users', to: 'users_controller#index', as: :users
root to: 'admin_home_controller#index'
