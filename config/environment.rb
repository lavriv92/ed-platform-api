require 'bundler/setup'
require 'hanami/setup'
require 'hanami/model'
require_relative '../lib/ed_platform_api'
require_relative '../apps/auth/application'
require_relative '../apps/admin/application'

Hanami.configure do
  mount Auth::Application, at: '/auth'
  mount Admin::Application, at: '/admin'

  model do
    ##
    # Database adapter
    #
    # Available options:
    #
    #  * SQL adapter
    #    adapter :sql, 'sqlite://db/ed_platform_api_development.sqlite3'
    #    adapter :sql, 'postgres://localhost/ed_platform_api_development'
    #    adapter :sql, 'mysql://localhost/ed_platform_api_development'
    #
    adapter :sql, ENV['DATABASE_URL']

    ##
    # Migrations
    #
    migrations 'db/migrations'
    schema     'db/schema.sql'
  end

  mailer do
    root 'lib/ed_platform_api/mailers'

    # See http://hanamirb.org/guides/mailers/delivery
    delivery do
      development :test
      test        :test
      # production :smtp, address: ENV['SMTP_PORT'], port: 1025
    end
  end
end
