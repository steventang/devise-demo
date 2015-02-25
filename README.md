# Rails-Devise-Omniauth-Boostrap Boilerplate

This is a minimal boilerplate app that can be used as a starting point to build web apps

* Rails 4.2.0, Ruby 2.2.0, Bootstrap 3.2.0
* User authentication system using Devise
* Flexible Omniauth implementation that makes it easy to add additional providers
* Multiple Omniauth providers for a single user are managed by an Identity model
* Devise flash message styles are modified to imitate bootstrap styles

## Using this boilerplate
* Puma as the production webserver
* Sendgrid as the production mailer
* Omniauth provider keys must be defined in environment variables in config (ie in an app_evironment_variables.rb file)
* Change app name in config/application.rb and config/intializers/session_store.rb.
* Chnage the secret token at config/initializers/secret_token.rb

## Getting started
* Clone the git repo - `git clone https://github.com/steventang/.git`
* Run `bundle install`
* Run `rake db:migrate`