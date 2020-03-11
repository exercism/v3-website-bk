Rails.application.routes.draw do

  # ############## #
  # Authentication #
  # ############## #
  devise_for :users, controllers: {
    sessions: 'authentication/sessions',
    registrations: 'authentication/registrations',
    confirmations: 'authentication/confirmations',
    omniauth_callbacks: 'authentication/omniauth_callbacks'
  }

  devise_scope :user do
    get "confirmations/required" => "authentication/confirmations#required", as: 'confirmation_required'
  end

  root to: "pages#index"
end
