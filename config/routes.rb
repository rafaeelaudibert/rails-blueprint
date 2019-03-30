# frozen_string_literal: true

require 'sidekiq/web'
require 'sidetiq/web'

Rails.application.routes.draw do
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               sign_up: 'signup'
             },
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations',
               confirmations: 'users/confirmations'
             }

  # Sidekiq
  if Rails.env.production? || Rails.env.staging?
    Sidekiq::Web.use Rack::Auth::Basic do |username, password|
      username == 'admin' && password == 'password'
    end
  end
  mount Sidekiq::Web, at: '/sidekiq'

  root to: 'pages#home'
end
