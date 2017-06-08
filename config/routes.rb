Rails.application.routes.draw do

  authenticate :user do
    resources :submissions
  end

  resources :jobs
  resources :institutions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "home/index"

  devise_for :users, controllers: { registrations: 'registrations' }
  root "home#index"
end
