# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
post '/login', to: 'auth_controller#handlelogin', as: :handle_login
get '/login', to: 'auth_controller#login', as: :login
post '/sessions_controller', to: 'sessions_controller#create'
